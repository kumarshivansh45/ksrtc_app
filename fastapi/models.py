from sqlalchemy import Column, Integer, String, Boolean, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql.expression import text
from sqlalchemy.sql.sqltypes import TIMESTAMP
from utils import rand_key()
from database import Base


# class Post(Base):
#     __tablename__ = "posts"

#     id = Column(Integer, primary_key=True, nullable=False)
#     title = Column(String, nullable=False)
#     content = Column(String, nullable=False)
#     published = Column(Boolean, server_default='TRUE', nullable=False)
#     created_at = Column(TIMESTAMP(timezone=True),
#                         nullable=False, server_default=text('now()'))
#     owner_id = Column(Integer, ForeignKey(
#         "users.id", ondelete="CASCADE"), nullable=False)

#     owner = relationship("User")


class User(Base):
    __tablename__ = "users"
    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String, nullable=False)
    email = Column(String, nullable=False, unique=True)
    phone = Column(String, nullable=False, unique=True)
    password = Column(String, nullable=False)
    id_type = Column(String, nullable=True)
    id_number = Column(String, nullable=True)
    created_at = Column(TIMESTAMP(timezone=True),
                        nullable=False, server_default=text('now()'))
    group = Column(String, nullable=False, server_default="user")


class Buses(Base):
    __tablename__ = "buses"
    id = Column(Integer, primary_key=True, nullable=False)
    alias = Column(String, nullable=False)
    num_plate = Column(String, nullable=False, unique=True)
    notes = Column(String, nullable=True, server_default=None, unique=True)
    created_at = Column(TIMESTAMP(timezone=True),
                        nullable=False, server_default=text('now()'))


class VarTokens(Base):
    __tablename__ = "var_tokens"
    id = Column(Integer, primary_key=True, nullable=False)
    user_id = Column(Integer, ForeignKey(
        "users.id", ondelete="CASCADE"), primary_key=True)
    captcha = Column(String, nullable=False, unique=True,
                     server_default=rand_key(7))
    jwt = Column(String, nullable=True, unique=True)
    captcha_time = Column(TIMESTAMP(timezone=True),
                          nullable=False, server_default=text('now()'))


class ServeraVsr(Base):
    __tablename__ = "server_var"
    id = Column(Integer, primary_key=True, nullable=False)
    key = Column(String, unique=True, nullable=False)
    value = Column(String, unique=False, nullable=True)

# class Vote(Base):
#     __tablename__ = "votes"
#     user_id = Column(Integer, ForeignKey(
#         "users.id", ondelete="CASCADE"), primary_key=True)
#     post_id = Column(Integer, ForeignKey(
#         "posts.id", ondelete="CASCADE"), primary_key=True)
