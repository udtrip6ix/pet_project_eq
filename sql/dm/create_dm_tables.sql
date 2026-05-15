CREATE SCHEMA IF NOT EXISTS dm;

CREATE TABLE IF NOT EXISTS dm.fct_count_day_earthquake (
    date date,
    count integer
);

CREATE TABLE IF NOT EXISTS dm.fct_avg_day_earthquake (
    date date,
    avg_magnitude float
);
