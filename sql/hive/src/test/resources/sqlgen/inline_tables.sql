-- This file is automatically generated by LogicalPlanToSQLSuite.
select * from values ("one", 1), ("two", 2), ("three", null) as data(a, b) where b > 1
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `a`, `gen_attr_1` AS `b` FROM (SELECT `gen_attr_0`, `gen_attr_1` FROM (VALUES ('one', 1), ('two', 2), ('three', CAST(NULL AS INT)) AS gen_subquery_0(gen_attr_0, gen_attr_1)) AS data WHERE (`gen_attr_1` > 1)) AS data
