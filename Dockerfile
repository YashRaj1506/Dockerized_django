FROM python:3.10-alpine

ENV PYTHONBUFFERD=1

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

RUN chmod +x entrypoint.sh 

EXPOSE 8000

CMD ["./entrypoint.sh"]
# CMD ["/bin/sh"]