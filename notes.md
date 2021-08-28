# T-SQL Training

## Window Functions
- e.g. 
```SQL
ROW_NUMBER ( OVER ( [PARTITION BY] value_expression, ... [ n ] ] order_by_clause)
```
- Window Functions can only appear in SELECT and ORDER BY clauses
- Allow us to run an expression or function across a window or group of rows rather than just the current row we are constrained to. 

### Framing
- Rows/Range; difference between using memory and TempDB
- Keywords: Preceding, Following, Unbounded, Current
- Whenever your rows contain duplicates, it might be a good idea to use framing inside your T-SQL Clause.

