#!/bin/bash
DB="injection1.db"
if test ! -e "$DB" ; then
    sqlite3 "$DB"< make-table.sql
fi
