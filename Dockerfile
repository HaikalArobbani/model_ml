FROM python:3.10-slim

ENV  PYTHONUNBUFFERED  True

ENV APP_HOME /app

ENV APP_HOME /app
WORKDIR $APP_HOME

COPY . ./

RUN pip install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0", "--port=${PORT}"]
