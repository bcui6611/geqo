BEGIN;

LOAD 'geqo_extension';

SET geqo_threshold = 2;
SET geqo_effort = 5;

ROLLBACK;
