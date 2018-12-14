source /Users/justin.harwood/Projects/Misc/scripts-menu/config

readArg() {
	read -p "
Arg: " arg;
}

readIndex() {
	read -n 1 -p "$(listScripts $1)
Index: " index;
}

listScripts() {
	COUNT=0
	for i in $(ls $1); do
	  echo "$COUNT) $i"
	  let COUNT=COUNT+1
	done
}

runScript() {
	COUNT=0
	for i in $(ls $1); do
	  if [ "$COUNT" = "$index" ]
	  then
	    sh $1/$i $arg
	  fi
	  let COUNT=COUNT+1
	done
}

main() {
	readIndex $1 
	readArg
	runScript $1
}

main $1