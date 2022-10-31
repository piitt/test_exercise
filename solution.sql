CREATE VIEW phone_a AS
SELECT
    s.id,
    s.phone,
    t.tariff_name
FROM
    subscriber AS s
    JOIN tariff_plan AS t ON s.trpl_id = t.id;
CREATE VIEW phone_b AS
SELECT
    s.id,
    s.phone,
    t.tariff_name
FROM
    subscriber AS s
    JOIN tariff_plan AS t ON s.trpl_id = t.id;
SELECT
    c.date AS date,
    pa.phone AS 'phone a',
    pa.tariff_name AS 'tariff_name a',
    pb.phone AS 'phone b',
    pb.tariff_name AS 'tariff_name b',
    c.duration AS duration,
    c.price AS price
FROM
    call AS c
    JOIN phone_a AS pa ON pa.id = c.id_a
    JOIN phone_b AS pb ON pb.id = c.id_b;
