from enum import unique
from sqlalchemy import Column, Integer, String, Boolean, ForeignKey, false
from sqlalchemy.orm import relationship
from sqlalchemy.sql.expression import text
from sqlalchemy.sql.sqltypes import TIMESTAMP
from utils import rand_key
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
    # autogenerated primary key
    id = Column(Integer, primary_key=True, nullable=False)
    name = Column(String, nullable=False, unique=False)  # name of the user
    email = Column(String, nullable=False, unique=True)  # email id of the user
    # phone number of the user
    phone = Column(String, nullable=False, unique=True)
    password = Column(String, nullable=False)  # password by the user
    created_by = Column(String, nullable=False, unique=False)  # created by
    # id_type = Column(String, nullable=True)
    # id_number = Column(String, nullable=True)
    # extra details -- configurable
    details = Column(String, nullable=True, unique=False)
    created_at = Column(TIMESTAMP(timezone=True),  # automatic time of creation of user
                        nullable=False, server_default=text('now()'))
    # group of user , for permissions
    group = Column(String, nullable=False, server_default="user")


class Buses(Base):
    __tablename__ = "buses"
    id = Column(Integer, primary_key=True, nullable=False)
    alias = Column(String, nullable=False, unique=True)
    num_plate = Column(String, nullable=False, unique=True)
    details = Column(String, nullable=True, server_default=None, unique=True)
    created_by = Column(String, nullable=False, unique=False)  # created by
    created_at = Column(TIMESTAMP(timezone=True),
                        nullable=False, server_default=text('now()'))


class Stoppages(Base):
    __tablename__ = "stoppages"
    id = Column(Integer, primary_key=True, nullable=False)
    alias = Column(String, nullable=False, unique=True)
    coordinates = Column(String, nullable=False, unique=True)
    details = Column(String, nullable=True, server_default=None, unique=True)
    created_by = Column(String, nullable=False, unique=False)  # created by
    created_at = Column(TIMESTAMP(timezone=True),
                        nullable=False, server_default=text('now()'))


class Trip_routes(Base):
    __tablename__ = "TripRoutes"
    id = Column(Integer, primary_key=True, nullable=False)
    # alias = Column(String, nullable=False , unique=True)

    # route = Column(String, nullable=False, unique=True)
    # details = Column(String, nullable=True, server_default=None, unique=True)
    # created_by = Column(String,nullable = False, unique=False) # created by
    # created_at = Column(TIMESTAMP(timezone=True),
    #                     nullable=False, server_default=text('now()'))


# class VarTokens(Base):
#     __tablename__ = "var_tokens"
#     id = Column(Integer, primary_key=True, nullable=False)
#     user_id = Column(Integer, ForeignKey(
#         "users.id", ondelete="CASCADE"), primary_key=True)
#     captcha = Column(String, nullable=False, unique=True,
#                      server_default=rand_key(7))
#     jwt = Column(String, nullable=True, unique=True)
#     captcha_time = Column(TIMESTAMP(timezone=True),
#                           nullable=False, server_default=text('now()'))


# class ServeraVsr(Base):
#     __tablename__ = "server_var"
#     id = Column(Integer, primary_key=True, nullable=False)
#     key = Column(String, unique=True, nullable=False)
#     value = Column(String, unique=False, nullable=True)

# class Vote(Base):
#     __tablename__ = "votes"
#     user_id = Column(Integer, ForeignKey(
#         "users.id", ondelete="CASCADE"), primary_key=True)
#     post_id = Column(Integer, ForeignKey(
#         "posts.id", ondelete="CASCADE"), primary_key=True)
