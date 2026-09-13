#!/bin/sh

# resource generator

cd "${1:-.}"

echo "[ path.txt ]"
read -r -p 'base? ' pbase
read -r -p 'ssh? ' pssh
read -r -p 'scp? ' pscp
read -r -p 'sshd? ' psshd

echo "${pbase:=.}" > path.txt
echo "${pssh:=/usr/bin/ssh}" >> path.txt
echo "${pscp:=/usr/bin/scp}" >> path.txt
echo "${psshd:=/usr/sbin/sshd}" >> path.txt

echo "[ conn.txt ]"
read -r -p 'hostname? ' vhost
read -r -p 'port? ' vport
read -r -p 'user? ' vuser

echo "${vhost:=localhost}" > conn.txt
echo "${vport:=22}" >> conn.txt
echo "${vuser:=null}" >> conn.txt

echo "[ con2f.txt ]"
read -r -p 'network identifier? ' vselfname
read -r -p 'local fwd? ' llfd
read -r -p 'remote fwd? ' lrfd
read -r -p 'dynamic fwd? ' ldfd
read -r -p 'jump hosts? ' ljmp

echo "${vselfname:=localhost.local}" > con2f.txt
echo "${llfd:===}" >> con2f.txt
echo "${lrfd:===}" >> con2f.txt
echo "${ldfd:===}" >> con2f.txt
echo "${ljmp:===}" >> con2f.txt

echo "[ optcl.txt ]"
echo "# Options, ssh_config format" > optcf.txt
echo "==" >> optcf.txt
echo "UserKnownHostsFile 'data/known_hosts'" >> optcf.txt
echo "[ optcl.txt ]"
echo "# Options, command-line flags" > optcl.txt
echo "==" >> optcl.txt
echo "[ optsf.txt ]"
echo "# Options, sshd_config format" > optsf.txt
echo "==" >> optsf.txt
echo "AuthorizedKeysFile 'data/authorized_keys'" >> optsf.txt
echo "[ optsl.txt ]"
echo "# Options, command-line flags" > optsl.txt
echo "==" >> optsl.txt

mkdir data
echo '' > data/known_hosts
echo '' > data/authorized_keys
chmod 0700 data
chmod 0600 data/known_hosts
chmod 0600 data/authorized_keys

echo "[ keypair.txt ]"
echo "#example.key" > keypair.txt
echo "#example.key.pub" >> keypair.txt
echo "==" >> keypair.txt
echo "==" >> keypair.txt
echo "[ hostkey.txt ]"
echo "==" > hostkey.txt

echo "[ def_conn.txt ]"
echo C > def_conn.txt

echo "[ def_tnl.txt ]"
echo C > def_tnl.txt
echo T >> def_tnl.txt
echo N >> def_tnl.txt
echo n >> def_tnl.txt
echo f >> def_tnl.txt

echo "[ def_cp.txt ]"
echo O > def_cp.txt
echo C >> def_cp.txt
echo r >> def_cp.txt
echo p >> def_cp.txt

echo "[ def_sv.txt ]"
echo D > def_sv.txt

echo "[ def_kg.txt ]"
echo t > def_kg.txt
echo f >> def_kg.txt
echo N >> def_kg.txt
 
