# Frontend/Dockerfile

FROM python:3.10.8

RUN mkdir -p app/frontend

COPY . .

WORKDIR /

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run", "/src/BMI_Calculator.py"]

CMD ["cd", "/src/BMI_Calculator.py"]