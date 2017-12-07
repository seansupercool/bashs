dir=$PWD
for row in $(jq -r '.[] | @base64' mappingBrand1.json);
do
    _jq() {
     echo ${row} | base64 --decode | jq -r ${1}
    }
    filePath=$(_jq '.filePath')
    moduleName=$(_jq '.moduleName')
    cd ${dir}/node_modules/app-prototype-mk1/${filePath}
    ln -s $moduleName.js index.js
    cd $dir
done