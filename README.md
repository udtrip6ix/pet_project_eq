pet_project_eq
pet_project_eq

1. Создать виртуальное окружение
python3.12 -m venv venv
source venv/bin/activate        (Linux / macOS)
venv\Scripts\activate           (Windows PowerShell)

2. Установить зависимости
pip install -r requirements.txt

3. Запустить инфраструктуру (Airflow, Postgres, MinIO, Metabase)
docker compose up -d

4. Остановить контейнеры
docker compose down
docker compose down -v          (полная очистка с удалением данных — осторожно)

5. Настройка S3 (MinIO)
В MinIO нужно создать Access Key и Secret Key:
login: minioadmin
pass: minioadmin
ACCESS_KEY: admin
SECRET_KEY: admin123

6. Добавить в Airflow → Admin → Variables:
s3_access_key = admin
s3_secret_key = admin123
pg_password = postgres

7. Настройка подключения дагов для витрины
Airflow → Admin → Connections

Создать новое подключение:

Connection Id: postgres_dwh
Connection Type: Postgres

Host: postgres_dwh
Port: 5432
Database: postgres
Login: postgres
Password: postgres

Extra: (оставить пустым)

8.  Подключение к DWH из DBeaver (локально):
host = localhost
port = 5433

9. metabase

name:foo
second name:foo
email:foo@example.com
team name: foo
pass:foofoo1

name:dwh
host:postgres_dwh
port: 5432
name db: postgres
username: postgres
pass: postgres

Дашборды через создание своей модели: 
    select * dm.fct_avg_day_earthquake
    select * dm.fct_count_day_earthquake
