**text within file name**</br>
`find ./ -iname "*text*"`

**find file modified between dates provide**</br>
`find  . -type f -newermt "2020-01-01" \! -newermt "2020-01-01" | xargs`

**find files larger then a given size**
`find ./ -type f -size +4G`