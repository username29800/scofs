#!/bin/sh

# ssh file copy session opener

cd "${3:-.}"

echo "[ path.txt ]" >&2
printf '%s' 'base? ' >&2
read -r pbase
echo '' >&2
printf '%s' 'ssh# ' >&2
read -r pssh
echo '' >&2
printf '%s' 'scp? ' >&2
read -r pscp
echo '' >&2
printf '%s' 'sshd# ' >&2
read -r psshd
echo '' >&2

rbase="`cd "${pbase:-.}" && pwd`"

echo "SCP: ${pscp:=/usr/bin/scp}" >&2

echo "[ conn.txt ]" >&2
printf '%s' 'hostname? ' >&2
read -r vhost
echo '' >&2
printf '%s' 'port? ' >&2
read -r vport
echo '' >&2
printf '%s' 'user? ' >&2
read -r vuser
echo '' >&2

echo "HOST: ${vuser:=null}@${vhost:=localhost}:${vport:=22}" >&2

echo "[ con2f.txt ]" >&2
printf '%s' 'network identifier? ' >&2
read -r vselfname
echo '' >&2
printf '%s' 'local fwd? ' >&2
read -r llfd
echo '' >&2
printf '%s' 'remote fwd? ' >&2
read -r lrfd
echo '' >&2
printf '%s' 'dynamic fwd? ' >&2
read -r ldfd
echo '' >&2
printf '%s' 'jump hosts? ' >&2
read -r ljmp
echo '' >&2

rlfd="`echo "$llfd" | grep '^[^#].*$' | sed '/^==$/d' | sed "s,\([0-9]\+\):ml/sr:\([0-9]\+\),-L \1:$vhost:\2,g"`"
rrfd="`echo "$lrfd" | grep '^[^#].*$' | sed '/^==$/d' | sed "s,\([0-9]\+\):mr/sl:\([0-9]\+\),-R \1:$vselfname:\2,g"`"
rdfd="`echo "$ldfd" | grep '^[^#].*$' | sed '/^==$/d' | sed "s,\(^\| \+\)\([0-9]\+\),-D \2 ,g"`"
rjmp="`echo "$ljmp" | grep '^[^#].*$' | sed '/^==$/d' | sed "s,[^ ]*,-J & ,g"`"
echo "$rlfd" | sed 's, -L,\n-L,g' | sed '/^ *$/d' >&2
echo "$rrfd" | sed 's, -R,\n-R,g' | sed '/^ *$/d' >&2
echo "$rdfd" | sed 's, -D,\n-D,g' | sed '/^ *$/d' >&2

echo "[ optcf.txt ]" >&2
printf '%s' 'options (client, config format)? ' >&2
read -r optcf
echo '' >&2
optcf="`echo "$optcf" | grep '^[^#].*$' | sed '/^==$/d'`"
echo "[ optcl.txt ]" >&2
printf '%s' 'options (client, command line)? ' >&2
read -r optcl
echo '' >&2
optcl="`echo "$optcl" | grep '^[^#].*$' | sed '/^==$/d'`"
echo "[ optsf.txt ]" >&2
printf '%s' 'options (server, config format)# ' >&2
read -r optsf
echo '' >&2
optsf="`echo "$optsf" | grep '^[^#].*$' | sed '/^==$/d'`"
echo "[ optsl.txt ]" >&2
printf '%s' 'options (server, command line)# ' >&2
read -r optsl
echo '' >&2
optsl="`echo "$optsl" | grep '^[^#].*$' | sed '/^==$/d'`"

echo "[ keypair.txt ]" >&2
printf '%s' 'ssh private keys? ' >&2
read -r lkeypriv
echo '' >&2
printf '%s' 'ssh public keys# ' >&2
read -r lkeypub
echo '' >&2
pkeypriv="`echo "$lkeypriv" | grep '^[^#].*$' | sed '/^==$/d' | sed 's,[^ ]*,-i & ,g'`"

echo "[ hostkey.txt ]" >&2
printf '%s' 'hostkey# ' >&2
read -r vhkey
echo '' >&2
vhkey="`echo "$vhkey" | grep '^[^#].*$' | sed '/^==$/d'`" 

#echo "[ def_conn.txt ]" >&2

#echo "[ def_tnl.txt ]" >&2

echo "[ def_cp.txt ]" >&2

#echo "[ def_sv.txt ]" >&2

#echo "[ def_kg.txt ]" >&2

printf '%s' 'session options? ' >&2
read -r dssopts
echo '' >&2
dssopts="`echo "$dssopts" | grep '^[^#].*$' | sed '/^==$/d'`" 

echo '' >&2

echo "cd ${rbase:-.} && ${pscp:-/usr/bin/scp} ${dssopts:--C} ${optcf} ${pkeypriv} ${rjmp} ${optcl} -P ${vport:-22} ${vuser}@${vhost}:${2:-.}" ${1:-.} | sed 's, \+, ,g' 
#echo "cd b${rbase:-.} && s${pssh:-/usr/bin/ssh} o${dssopts:--C} oo${optcf} k${pkeypriv} j${rjmp} f${rlfd} f${rrfd} d${rdfd} ooo${optcl} -p p${vport:-22} u${vuser}@h${vhost}"
 
