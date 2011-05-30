# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl <name>.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 16;
BEGIN {
use_ok('Qt::Sql');
use_ok('Qt::Sql');
use_ok('Qt::Sql::QSqlIndex');
use_ok('Qt::Sql::QSqlRecord');
use_ok('Qt::Sql::QSqlRelationalTableModel');
use_ok('Qt::Sql::QSqlError');
use_ok('Qt::Sql::QSqlResult');
use_ok('Qt::Sql::QSqlTableModel');
use_ok('Qt::Sql::QSqlDriverCreatorBase');
use_ok('Qt::Sql::QSqlField');
use_ok('Qt::Sql::QSqlDatabase');
use_ok('Qt::Sql::QSqlQueryModel');
use_ok('Qt::Sql::QSqlDriverPlugin');
use_ok('Qt::Sql::QSqlDriver');
use_ok('Qt::Sql::QSqlRelation');
use_ok('Qt::Sql::QSqlQuery');
}

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.
