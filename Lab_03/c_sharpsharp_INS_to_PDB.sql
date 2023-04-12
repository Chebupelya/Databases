CREATE TABLE KVS_table (i number);
INSERT INTO KVS_table VALUES (1);

CREATE TABLE INS_TABLE (i number);
INSERT INTO INS_TABLE VALUES (1);

DROP TABLE INS_TABLE;



SELECT owner, object_name, object_type
FROM all_objects
WHERE owner IN ('C##INS', 'U1_INS_PDB')
ORDER BY owner, object_type, object_name;