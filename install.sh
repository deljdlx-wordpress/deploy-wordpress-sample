sh ./bin/install-requirements.sh
# ========================================================================================


read -p "Install Wordpress (y/[n]) ? " REPLY
if [ "$REPLY" = "${REPLY#[Yy]}" ];
then
    echo "Skipping Wordpress installation"

else {
    echo "Wordpress installation"
    sh ./bin/install-wordpress.sh
}
fi


echo ""
echo "=============================="
echo "=============================="
echo ""


# ========================================================================================

read -p "Install Wordpress Objet oriented Framework (y/[n]) ? " REPLY
echo    # (optional) move to a new line
if [ "$REPLY" = "${REPLY#[Yy]}" ];
then
    echo "Skipping Wordpress Objet oriented Framework installation"

else {
    sh ./bin/install-woof.sh
}
fi




# ========================================================================================
read -p "Install Woof Workbench theme (y/[n]) ? " REPLY
echo    # (optional) move to a new line
if [ "$REPLY" = "${REPLY#[Yy]}" ];
then
    echo "Skipping Woof Workbench theme installation"
else {

    sh ./bin/install-woow-theme.sh
}
fi

echo ""
echo "=============================="
echo ""

# ========================================================================================


echo "🟢 Installing js development requirements"

echo "🟢 npm install"
npm install

echo "💛 run gulp for wordpress hot reload"
echo ""
echo "=============================="
echo ""



# ========================================================================================

# ========================================================================================

read -p "Install vuejs vuetify wordpress front (y/[n]) ? " REPLY
echo    # (optional) move to a new line
if [ "$REPLY" = "${REPLY#[Yy]}" ];
then
    echo "Skipping vuejs vuetify wordpress installation"
else {
    sh ./bin/install-vvw.sh
}
fi



# ========================================================================================
