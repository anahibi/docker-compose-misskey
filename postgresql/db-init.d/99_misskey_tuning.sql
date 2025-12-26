/* 99_misskey_tuning.sql
   1GB RAM SSD PostgreSQL tuning settings for Misskey
 */
ALTER SYSTEM SET max_connections = '50';
ALTER SYSTEM SET shared_buffers = '256MB';
ALTER SYSTEM SET effective_cache_size = '768MB';
ALTER SYSTEM SET maintenance_work_mem = '128MB';
ALTER SYSTEM SET wal_buffers = '8MB';
ALTER SYSTEM SET random_page_cost = '1.1';
ALTER SYSTEM SET effective_io_concurrency = '100';
ALTER SYSTEM SET work_mem = '4MB';
ALTER SYSTEM SET huge_pages = 'off';
ALTER SYSTEM SET max_wal_size = '1GB';
ALTER SYSTEM SET min_wal_size = '256MB';
ALTER SYSTEM SET autovacuum_vacuum_scale_factor = '0.05';
ALTER SYSTEM SET autovacuum_analyze_scale_factor = '0.05';
ALTER SYSTEM SET autovacuum_vacuum_cost_limit = '2000';
SELECT pg_reload_conf();

/* 99_misskey_tuning.sql
   2GB RAM SSD PostgreSQL tuning settings for Misskey
 */
/*
ALTER SYSTEM SET max_connections = '100';
ALTER SYSTEM SET shared_buffers = '512MB';
ALTER SYSTEM SET effective_cache_size = '1536MB';
ALTER SYSTEM SET maintenance_work_mem = '256MB';
ALTER SYSTEM SET wal_buffers = '16MB';
ALTER SYSTEM SET random_page_cost = '1.1';
ALTER SYSTEM SET effective_io_concurrency = '200';
ALTER SYSTEM SET work_mem = '8MB';
ALTER SYSTEM SET huge_pages = 'off';
ALTER SYSTEM SET max_wal_size = '2GB';
ALTER SYSTEM SET min_wal_size = '512MB';
ALTER SYSTEM SET autovacuum_vacuum_scale_factor = '0.05';
ALTER SYSTEM SET autovacuum_analyze_scale_factor = '0.05';
ALTER SYSTEM SET autovacuum_vacuum_cost_limit = '2000';
SELECT pg_reload_conf();
*/

/* Check config settings */
/*
SELECT name, setting
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
*/