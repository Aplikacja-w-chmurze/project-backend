# Wykorzystujemy obraz z Pythonem w wersji 3.9
FROM python:3.9-slim-buster

# Kopiujemy plik app.py do katalogu /app w kontenerze
COPY app.py /app/

# Pracujemy w katalogu /app
WORKDIR /app

# Instalujemy zależności
RUN pip install flask

# Ustawiamy zmienną środowiskową z nazwą pliku aplikacji
ENV FLASK_APP=app.py

# Ustawiamy zmienną środowiskową z numerem portu
ENV PORT=5000

# Ustawiamy polecenie, które zostanie wykonane po uruchomieniu kontenera
CMD ["flask", "run", "--host=0.0.0.0"]


