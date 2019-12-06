svn checkout https://github.com/taimoorh5/cisc3140.git
svn add --parents Assignment7/Main.java
svn add --parents Assignment7/makefile
make
java Main
svn commit -m "Svn HW"