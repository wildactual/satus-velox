**commands to mount raw disk images**</br>
`kpartx -a -v ./ image.raw`

**noload required with Read-Only**</br>
`mount -o ro,noload /loop /mnt/point`