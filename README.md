# bookmark-manager-monday

## Database
How to use:
- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query saved in the file 01_create_bookmarks_table.sql;
- Create the database using the psql command CREATE DATABASE bookmark_manager_test;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query saved in the file 01_create_bookmarks_table.sql

```
**Client:**
+-------------------+
| Domain/bookmarks  |
+-------------------+

**Controller:**
+-------------------+
| app.rb            |
|~~~~~~~~~~~~~~~~~~~|
| GET request       |
+-------------------+

**Model:**
+-------------------+
| BookMarkManager   |
|~~~~~~~~~~~~~~~~~~~|
| @bookmarkmanager  |
|~~~~~~~~~~~~~~~~~~~|
| show_list         |
+-------------------+

**View:**
+-------------------+
| erb bookmarks     |
+-------------------+
```

## User Stories
