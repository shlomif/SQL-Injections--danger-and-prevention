#!/bin/bash
DB="test_injection1"
mysqladmin create "$DB"
mysql "$DB" < make-table.sql
