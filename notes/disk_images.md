**commands to mount raw disk images**</br>
`kpartx -a -v -r ./ image.raw`

**noload required with Read-Only**</br>
`mount -o ro,noload /dev/mapper/loop /mnt/point`