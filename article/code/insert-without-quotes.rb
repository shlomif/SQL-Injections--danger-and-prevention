#!/usr/bin/env ruby
require 'mysql'

def input
    ret = gets()
    ret.chomp!()
    return ret
end

user = "root"
password = ""

print( "Enter a name to insert:\n" )
name = input()

dbh = Mysql.real_connect(
    "localhost", user, password, "test_injection1", 
    nil, nil, Mysql::CLIENT_MULTI_STATEMENTS
)

dbh.query(
    "INSERT INTO names (id, name) VALUES (null, " + name + ")" 
)
