# MySQL Database Standard
### TL;DR
**File Names:** `FileName.sql`

**Table Names:** `Table_Name`

**Column Names:** `Column_Name`

**View Names:** `View_Name`

**Function Names:** `functionName`

**Stored Procedure Names:** `StoredProcedureName`

**Function/Stored Procedure Parameter Names:** `_someParameter`

**Function/Stored Procedure Local Variable Names:** `someVariable`

### File Names
**Example:** ```FileName.sql```

File names should use Pascal Case. They should be named after the contents of the file such as the name of the table, view, function, or stored procedure. For example, if the file contains the `User` table the file name should be `User.sql`.

### Table Names
**Example:** ```Table_Name```

Table names should use Pascal Case separated by an underscore. They should also be named in a singular fashion as the table is like an entity definition. For example, the correct name is ```User``` and not ```Users```.

### Column Names
**Example:** ```Column_Name```

Column names should use Pascal Case separated by an underscore. If the column will be used as a primary key it should be descriptive to the table. For example, the correct column name is ```User_Id``` and not just ```Id```. If the column is a foreign key it should use the same name as the reference table. For example, if I need to reference ```User_Id``` in another table the column in the other table will also be ```User_Id```.

### View Names
**Example:** ```View_Name```

View names should use Pascal Case separated by an underscore. The name should describe what you are viewing. This name can be plural if it makes sense. For example, the correct name is ```User_Details``` and not ```User_Detail```.

### Function Names
**Example:** ```functionName```

Function names should use camel case and no underscores. This will allow them to stand out against stored procedures. The name should describe what the function does and contain no prefixes. For example, the correct name is ```someFunction``` and not ```fnSomeFunction``` or ```fn_SomeFunction```.

### Stored Procedure Names
**Example:** ```StoredProcedureName```

Stored procedure names should use Pascal Case with no underscores. The name should describe what the stored procedure does and contain no prefix. For example, the correct name is ```StoredProcedureName``` and not ```spStoredProcedureName``` or ```sp_StoredProcedureName```.

### Function/Stored Procedure Parameter Names
**Example:** ```_someParameter```

Parameter names should use camelCase with a leading underscore. This allows easy differentiation between parameters and local variables.

⚠️ We use a leading underscore here and underscore separation in column names to avoid name collisions in MySQL/MariaDB. A parameter ```someParameter``` used in a where statement with a table that has a column ```SomeParameter``` would cause issues by using the column instead of the parameter.

### Function/Stored Procedure Local Variable Names
**Example:** ```someVariable```

Local variable names within a function or stored procedure should use camelCase with no leading underscore. This allows easy differentiation between local variables and parameters.

⚠️ We use no leading underscore here and underscore separation in column names to avoid name collisions in MySQL/MariaDB. A local variable ```someVariable``` used in a where statement with a table that has a column ```SomeVariable``` would cause issues by using the column instead of the local variable.
