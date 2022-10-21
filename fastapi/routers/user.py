from fastapi import FastAPI, Response, status, HTTPException, Depends, APIRouter
from sqlalchemy.orm import Session
import models
import oauth2
import schemas
import utils
from database import get_db

router = APIRouter(
    prefix="/users",
    tags=['Users']
)


# CREATE A USER
@router.post("/", status_code=status.HTTP_201_CREATED, response_model=schemas.UserCreateReturn)
def create_user(user: schemas.UserCreate, db: Session = Depends(get_db)):

    # hash the password - user.password
    if (user.conf_password == user.password):
        hashed_password = utils.hash(user.password)
        user.password = hashed_password
        values = (user.dict())
        values.pop('conf_password')
        print(values)
        new_user = models.User(**values)
        db.add(new_user)
        db.commit()
        db.refresh(new_user)

        return new_user
    else:
        raise HTTPException(status_code=status.HTTP_501_NOT_IMPLEMENTED,
                            detail=f"passwd & conf_passwd dont match")


# DELETE A USER
# @router.post("/{id}", status_code=status.HTTP_204_NO_CONTENT, response_model=schemas.UserCreateReturn)
# def delete_user(user: schemas.UserCreate, current_user: int = Depends(oauth2.get_current_user), db: Session = Depends(get_db)):

#     # hash the password - user.password
#     del_user = db.query(models.User).filter(models.User.id == id).first()
#     if current_user == del_user:
#         pass
#     if (user.conf_password == user.password):
#         hashed_password = utils.hash(user.password)
#         user.password = hashed_password
#         values = (user.dict())
#         values.pop('conf_password')
#         print(values)
#         new_user = models.User(**values)
#         db.add(new_user)
#         db.commit()
#         db.refresh(new_user)

#         return new_user
#     else:
#         raise HTTPException(status_code=status.HTTP_501_NOT_IMPLEMENTED,
#                             detail=f"passwd & conf_passwd dont match")

# @router.get('/{id}', response_model=schemas.UserOut)
# def get_user(id: int, db: Session = Depends(get_db), ):
#     user = db.query(models.User).filter(models.User.id == id).first()
#     if not user:
#         raise HTTPException(status_code=status.HTTP_404_NOT_FOUND,
#                             detail=f"User with id: {id} does not exist")

#     return user
