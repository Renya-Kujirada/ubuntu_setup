SCRIPT_DIR=`dirname $0`
cd $SCRIPT_DIR

STR1="\""
STR2="\","
code --list-extensions | xargs -i echo "$STR1"{}"$STR2" >> list-extensions_for_json.txt
code --list-extensions | xargs -L 1 echo code --install-extension >> list_extensions.txt
