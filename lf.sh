#/bin/sh

# resource loader

cd "${2:-.}"

cat path.txt | sed '/^ *#/d'
cat conn.txt | sed '/^ *#/d'
cat con2f.txt | sed '/^ *#/d' | sed 's,^ *$,==,' 
cat optcf.txt | sed '/^ *#/d' | sed 's,^==$,,' | sed 's,^ *\([^ ]*\) \('\''[^'\'']*'\''\),-o \1\\ \2,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
cat optcl.txt | sed '/^ *#/d' | sed 's,^==$,,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
cat optsf.txt | sed '/^ *#/d' | sed 's,^==$,,' | sed 's,^ *\([^ ]*\) \('\''[^'\'']*'\''\),-o \1\\ \2,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
cat optsl.txt | sed '/^ *#/d' | sed 's,^==$,,' | sed 's,^ *\([^ ]*\) \('\''[^'\'']*'\''\),-o \1\\ \2,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
cat keypair.txt | sed '/^ *#/d' | sed 's,^==$,,' | sed 's,^$,==,' 
cat hostkey.txt | sed '/^ *#/d' | sed 's,^==$,,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
cat def_"${1:-conn}".txt | sed '/^ *#/d' | sed 's,^==$,,' | sed 's,^[^ ]\+$,-&,' | tr '\n' ' ' | sed 's,^ *$,==,' | sed 's,$,\n,'
