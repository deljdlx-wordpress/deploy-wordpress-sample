echo "🟢 Project composer install"
composer install



if [ -d "vendor/Deljdlx/Deploy" ]; then
    # echo "🟢 Deleting Deljdlx/Deploy vendor"
    # rm -rf ./vendor/Deljdlx/Deploy
    echo "vendor/Deljdlx/Deploy already installed";
else
    git clone git@github.com:deljdlx/deploy.git ./vendor/Deljdlx/Deploy;
fi

if [ -d "vendor/Deljdlx/DeployWordpress" ]; then
    # echo "🟢 Deleting Deljdlx/DeployWordpress vendor"
    # rm -rf ./vendor/Deljdlx/DeployWordpress
    echo "vendor/Deljdlx/DeployWordpress already installed";
else 
    git clone git@github.com:deljdlx/deploy-wordpress.git ./vendor/Deljdlx/DeployWordpress;
fi





# ========================================================================================
echo ""
echo "=============================="


echo "🟢 Installing wordpress"
dep scaffold development
