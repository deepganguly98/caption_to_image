FROM python:3.9
ENV PYTHONUNBUFFERED True
EXPOSE 8501

ENV APP_HOME /app
WORKDIR $APP_HOME


COPY . ./

RUN pip install -r requirements.txt

CMD streamlit run main.py