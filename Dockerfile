From python:3.12-slim-bookworm

WORKDIR /flask_loan_app

RUN python3 -m pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]