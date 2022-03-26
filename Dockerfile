FROM python:3.9
ENV PYTHONUNBUFFERED True
EXPOSE 8080

ENV APP_HOME /app
WORKDIR $APP_HOME


COPY . ./

RUN pip install -r req.txt

CMD streamlit run --server.port 8080 --server.enableCORS false --browser.serverAddress="0.0.0.0" main.py
