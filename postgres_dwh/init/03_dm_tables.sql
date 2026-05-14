-- ================================
-- 1. Создаём схему DM, если её нет
-- ================================
CREATE SCHEMA IF NOT EXISTS dm;


-- ===========================================
-- 2. Создаём таблицу dm.fct_count_day_earthquake
-- ===========================================
CREATE TABLE IF NOT EXISTS dm.fct_count_day_earthquake (
    date date,
    count integer
);

-- Очищаем витрину перед первой загрузкой
TRUNCATE TABLE dm.fct_count_day_earthquake;


-- ===========================================
-- 3. Создаём таблицу dm.fct_avg_day_earthquake
-- ===========================================
CREATE TABLE IF NOT EXISTS dm.fct_avg_day_earthquake (
    date date,
    avg_magnitude float
);

-- Очищаем витрину перед первой загрузкой
TRUNCATE TABLE dm.fct_avg_day_earthquake;


-- ===========================================
-- 4. Удаляем временные таблицы STG за дату DAG-run
-- ===========================================
DROP TABLE IF EXISTS stg."tmp_fct_count_day_earthquake_{{ ds }}";
DROP TABLE IF EXISTS stg."tmp_fct_avg_day_earthquake_{{ ds }}";
