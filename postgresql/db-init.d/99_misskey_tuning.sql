-- DB Version: 18
-- OS Type: linux
-- DB Type: web
-- Total Memory (RAM): 3 GB
-- CPUs num: 2
-- Connections num: 100
-- Data Storage: ssd

ALTER SYSTEM SET max_connections = '100';
ALTER SYSTEM SET shared_buffers = '768MB';
ALTER SYSTEM SET effective_cache_size = '2304MB';
ALTER SYSTEM SET maintenance_work_mem = '192MB';
ALTER SYSTEM SET checkpoint_completion_target = '0.9';
ALTER SYSTEM SET wal_buffers = '16MB';
ALTER SYSTEM SET default_statistics_target = '100';
ALTER SYSTEM SET random_page_cost = '1.1';
ALTER SYSTEM SET effective_io_concurrency = '200';
ALTER SYSTEM SET work_mem = '7281kB';
ALTER SYSTEM SET huge_pages = 'off';
ALTER SYSTEM SET min_wal_size = '1GB';
ALTER SYSTEM SET max_wal_size = '4GB';
ALTER SYSTEM SET checkpoint_timeout = '15min';
SELECT pg_reload_conf();

/* Check config settings */
SELECT name, unit, setting
FROM pg_settings
WHERE name IN (
    'shared_buffers',
    'work_mem',
    'maintenance_work_mem',
    'effective_cache_size',
    'max_connections',
    'max_wal_size',
    'min_wal_size',
    'wal_buffers',
    'checkpoint_completion_target',
    'autovacuum_vacuum_scale_factor',
    'autovacuum_analyze_scale_factor',
    'autovacuum_vacuum_cost_limit',
    'synchronous_commit',
    'full_page_writes',
    'huge_pages',
    'effective_io_concurrency',
    'random_page_cost',
    'default_statistics_target'
)
ORDER BY name;
