FROM python:3.11.1-alpine

WORKDIR /api
COPY /api /api

RUN pip install -r requirements.txt
EXPOSE 80:80
CMD [ "python", "__main__.py" ]

