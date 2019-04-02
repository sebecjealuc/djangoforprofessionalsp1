FROM python:3.7-slim

#envの変数を定義
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

#work directoryを設定
WORKDIR /code

#dependenciesをinstall
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system

#Projectをコピー
COPY . /code/

