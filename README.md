Gridcoin-RAC-Finder-
====================

Prerequisites:

- Gridcoin wallet with the latest block height. 

- Mysql database with the following database + table: 
database called 'gabe' 
Tables as follows: ProjectName char(20), RAC int(10), CPID char(32), Height int(9)


There are some changes you need to make to the gabe.pl and the ViewRAC.pl. 

The edit's in gabe.pl are as follows; 

Line 9 - $walletpath change to the path to your gridcoin wallet(full path).

Line's 12/13 - add your sql credentials.



The edit's in viewRAC.pl:

Lines's 6/7 - add your sql credentials.



