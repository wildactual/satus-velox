**find all files and use mmv to rename a bulk group of files with similar names, such as zeek files**</br>
`for file in $(find ./ maxdepth 2 -type d0; do mmv $file/'*%3A*%3A*%3A*%3A*.log.gz' $file/'#1:#2:#3:#4:#5.log.gz'; done;`
