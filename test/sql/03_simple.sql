BEGIN;
CREATE TABLE tenk1 (
    thousand INT,
    hundred INT
);

LOAD 'geqo_extension';

SET geqo_threshold = 2;

SELECT * FROM
	tenk1 t1,
	tenk1 t2,
	tenk1 t3
WHERE
	t1.thousand = t3.thousand AND
	t3.hundred = t2.hundred;

ROLLBACK;
