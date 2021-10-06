**text within file name**</br>
`find ./ -iname "*text*"`

**find file modified between dates provide**</br>
`find  . -type f -newermt "2020-01-01" \! -newermt "2020-01-01" | xargs`