svn checkout https://github.com/taimoorh5/cisc3140.git
svn add --parents makefile/Main.java
svn add --parents makefile/makefile
svn commit -m "Adding makefile"
make
java Main
svn commit -m "Svn HW"