brandName=($(jq -r '.brandName' mappingBrand.json))
filePathList=($(jq -r '.filePathList | @tsv' mappingBrand.json))
cd "node_modules/app-prototype-mk1/"
dir=$PWD
for filePath in "${filePathList[@]}"
do
    echo $dir
    # echo $filePath$brandName
    cd $filePath
    ln -s $brandName.js index.js
    cd $dir
    # ln -s tz.js index.js
    # path=$dir$filePath
    # ln -s $path$brandName.js $path'index.js'
    # ln -s $dir$filePath$brandName.js $dir$filePath/index.js
    # ln -s jsconfig.json jsconfig.json1
    # ln -s node_modules/app-prototype-mk1/modules/home/defautData/tz.js node_modules/app-prototype-mk1/modules/home/defautData/index.js
done