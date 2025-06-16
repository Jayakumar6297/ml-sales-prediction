FROM python:3.12.3
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
#RUN pip install flask numpy scikit-learn
COPY app.py .
COPY model.pkl .
EXPOSE 8080
CMD ["python", "app.py"]
