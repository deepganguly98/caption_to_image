FROM python:3.9
ENV PYTHONUNBUFFERED True
EXPOSE 8501

ENV APP_HOME /app
WORKDIR $APP_HOME

ENV PORT=
COPY . ./

RUN pip install -r requirements.txt

# CMD streamlit run main.py
CMD streamlit run main.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0"