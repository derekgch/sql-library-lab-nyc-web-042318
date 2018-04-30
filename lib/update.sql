-- UPDATE cats SET name = "Hana" WHERE name = "Hannah";

update characters set species = 'Martian' where id = (SELECT MAX(id) FROM characters);
