#!/usr/bin/env ruby
require 'sqlite3'

print( "Enter a name to insert:\n" )
name = gets()
db = SQLite3::Database.new( "injection1.db" )
db.execute( 
    "INSERT INTO names (id, name) VALUES (null, " + "'" + name + "'" + ")" 
)
