from sqlalchemy import Column, Integer, String, DateTime
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from mysqlinfo.acount import username, password, host, port


connect = f'{username}:{password}@{host}:{port}'
database = 'kaggle'

Base = declarative_base()
engine = create_engine(f'mysql+pymysql://{connect}/{database}', echo=True)


class Test(Base):

    __tablename__ = 'test'
    id = Column(Integer, primary_key=True, autoincrement=True)
    name = Column(String(50))
    time = Column(DateTime)


def create_table():
    Base.metadata.create_all(engine)


def drop_table():
    Base.metadata.drop_all(engine)


def create_session():
    Session = sessionmaker(bind=engine)
    session = Session()
    return session
