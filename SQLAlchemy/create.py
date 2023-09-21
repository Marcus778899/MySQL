from main import create_session, Test
from datetime import datetime


data_obj = {
    'id': 9068,
    'name': 'Marcus Lin',
    'time': datetime.now().strftime('%Y-%m-%d')
}
session = create_session()
session.add(Test(**data_obj))
session.commit()
session.close()
