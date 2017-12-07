brandName=($(jq -r '.brandName' mappingModules.json))
filePathList=($(jq -r '.filePathList | @tsv' mappingModules.json))
cd "node_modules/app-prototype-mk1/"
dir=$PWD
for filePath in "${filePathList[@]}"
do
    cd $filePath
    mv $brandName.js /tmp/
    rm *
    mv /tmp/$brandName.js index.js
    cd $dir
done