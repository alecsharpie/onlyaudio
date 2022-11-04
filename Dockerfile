FROM python:3.8-buster


# front end
WORKDIR /usr/app/front-end

RUN apt-get update && apt-get -y upgrade

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash - && apt install -y nodejs

COPY front-end /usr/app/front-end

RUN npm install
RUN npx next build && npx next export


# backend api
WORKDIR /usr/app

COPY api /usr/app/api
COPY requirements.txt /usr/app/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.main:app --host 0.0.0.0 --port 8891
