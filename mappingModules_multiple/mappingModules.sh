dir=$PWD
for row in $(jq -r '.[] | @base64' mappingModules.json);
do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    filePath=$(_jq '.filePath')
    moduleName=$(_jq '.moduleName')
    cd ${dir}/node_modules/app-prototype-mk1/${filePath}
    rm index.js
    ln $moduleName.js index.js
    cd $dir
done