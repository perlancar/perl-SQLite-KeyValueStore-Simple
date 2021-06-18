#!perl

use 5.010001;
use strict;
use warnings;
use Test::More 0.98;

use SQLite::KeyValueStore::Simple;
use Test::SQL::Schema::Versioned;
use Test::WithDB::SQLite;

sql_schema_spec_ok(
    $SQLite::KeyValueStore::Simple::db_schema_spec,
    Test::WithDB::SQLite->new,
);
done_testing;
