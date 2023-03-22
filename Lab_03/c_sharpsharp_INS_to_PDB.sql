CREATE TABLE KVS_table (i number);
INSERT INTO KVS_table VALUES (1);

SELECT owner, object_name, object_type
FROM all_objects
WHERE owner IN ('C##XXX', 'U1_XXX_PD')
ORDER BY owner, object_type, object_name;