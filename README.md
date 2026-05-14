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
ACCESS_KEY: admin
SECRET_KEY: admin123

Добавить в Airflow → Admin → Variables:
s3_access_key = admin
s3_secret_key = admin123
s3_endpoint   = http://minio:9000

6. Настройка переменных DWH (Postgres)
Добавить в Airflow → Admin → Variables:
dwh_host = postgres_dwh
dwh_port = 5432
dwh_user = postgres
dwh_password = postgres
dwh_db = postgres

Подключение к DWH из DBeaver (локально):
host = localhost
port = 5433
