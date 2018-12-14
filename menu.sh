source /Users/justin.harwood/Projects/Misc/scripts-menu/config

readArg() {
	read -p "
Arg: " arg;
}

readIndex() {
	read -n 1 -p "$(listScripts)
Index: " index;
}

listScripts() {
	COUNT=0
	for i in $(ls $SCRIPTS_PATH); do
	  echo "$COUNT) $i"
	  let COUNT=COUNT+1
	done
}

runScript() {
	COUNT=0
	for i in $(ls $SCRIPTS_PATH); do
	  if [ "$COUNT" = "$index" ]
	  then
	    sh $SCRIPTS_PATH/$i $arg
	  fi
	  let COUNT=COUNT+1
	done
}

main() {
	readIndex
	readArg
	runScript
}

main