brandName=($(jq -r '.brandName' mappingModules.json))
filePathList=($(jq -r '.filePathList | @tsv' mappingModules.json))
cd "node_modules/app-prototype-mk1/"
dir=$PWD
for filePath in "${filePathList[@]}"
do
    echo $dir
    cd $filePath
    rm index.js
    ln -s $brandName.js index.js
    cd $dir
done