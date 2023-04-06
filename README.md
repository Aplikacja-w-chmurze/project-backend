# project-backend

#### Kroki do uruchomienia obrazu dockerfile

1. W terminalu napisać polecenie docker build -t project-backend

2. Wejść w zakładkę "Images" w Dockerze

3. Odpalić utworzony obraz,

4. Ustawić port 5000 w zakładce settings

5. Wpisać w przeglądarce polecenie "localhost:5000/hello" albo "localhost:5000/hello/imie"

#### Kroki do uruchomiena locusta

1. W terminalu napisać polecenie "pip install locust"
2. Stwórz plik o nazwie locustfile.py, w którym należy zdefiniować zadania jakie będą symulowane np.
```python
from locust import HttpUser, task, between
class MyUser(HttpUser):
    wait_time = between(5, 15)

    @task
    def my_task(self):
        self.client.get("/mypage")
```
3. Uruchom środowisko oraz swoją aplikacje na jednym terminalu, w drugim wpisz polecenie locust 
4. Wejdź w wyświetlony link i ustawić parametry dla testu.
