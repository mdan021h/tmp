#!/data/data/com.termux/files/usr/bin/sh

####$ pkg install curl -y
####$ curl -L https://git.io/fjK3Y -o atba.sh
####$ bash ./tmp.sh

echo "android Tor+obfs4 installer in Termux"
pkg install tor obfs4proxy -y
echo "" >> $PREFIX/etc/tor/torrc
echo "UseBridges 1" >> $PREFIX/etc/tor/torrc
echo "" >> $PREFIX/etc/tor/torrc
echo "ClientTransportPlugin obfs4 exec /data/data/com.termux/files/usr/bin/obfs4proxy managed" >> $PREFIX/etc/tor/torrc
echo "" >> $PREFIX/etc/tor/torrc
echo "Bridge obfs4 185.216.27.184:80 1A9BEBED1D9EC64453DE88499AEDEF7CC133972D cert=SvvNgpSzTgDdqrCodhsJd7ENy85A11tvjFx3ntw0yTLUev8jF43cnq7hyzWjArxDDoddFg iat-mode=0" >> $PREFIX/etc/tor/torrc
echo "Bridge obfs4 185.177.207.219:11219 598326DF0E32A1E1CCA87A10C9F614C104DD9DE9 cert=QJNjvqxkejHYUuMkM/cQmyV4Egj8S+f+7F4CPxcoWitFEsyP2dJXNQl8jU/M+5v9NeH4Hw iat-mode=1" >> $PREFIX/etc/tor/torrc
echo "Bridge obfs4 57.129.117.251:61919 85F9547D13078145C9D894AFB981BA6E4B880B61 cert=TZc+BzJg7PNIxRt0uXt3aYVmALDwV3y0UeYAioxrPfjS3Fz9lE5oTOzoX2ShaCxVtuA+UQ iat-mode=0" >> $PREFIX/etc/tor/torrc
echo "Bridge obfs4 51.38.220.224:30996 22494A012CFA8C88B1D907E2CCB8409AC35B537B cert=dOPijSCG6FD89fYv5N2F9QoeK1od3tpG6VBE/kMY0Bt1aW/7aXPIzsENDoLWZe43gI8efw iat-mode=0" >> $PREFIX/etc/tor/torrc
echo "" >> $PREFIX/etc/tor/torrc
echo "HTTPTunnelPort 9080" >> $PREFIX/etc/tor/torrc
echo "" >> $PREFIX/etc/tor/torrc
