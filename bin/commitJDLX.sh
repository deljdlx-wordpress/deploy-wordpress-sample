FILEPATH_ROOT=`dirname $0`;
FILEPATH_ROOT=`realpath $FILEPATH_ROOT/..`;


echo "🟢 Commiting $FILEPATH_ROOT/vendor/Deljdlx/Deploy"
cd "$FILEPATH_ROOT/vendor/Deljdlx/Deploy"
git add . && git commit -m "sync" && git push

echo
echo


echo "🟢 Commiting $FILEPATH_ROOT/vendor/DeployWordpress"
cd "$FILEPATH_ROOT/vendor/Deljdlx/DeployWordpress"
git add . && git commit -m "sync" && git push
