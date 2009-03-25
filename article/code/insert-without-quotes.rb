#!/usr/bin/env ruby
require 'sqlite3'

def input
    ret = gets()
    ret.chomp!()
    return ret
end

print( "Enter a name to insert:\n" )
name = input()
db = SQLite3::Database.new( "injection1.db" )
db.execute_batch( 
           "INSERT INTO names (id, name) VALUES (null, " + name + ")" 
          )
