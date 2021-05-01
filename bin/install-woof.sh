# ========================================================================================

echo "🟢 Installing woof ; Wordpress Oriented Object Framework"
dep installWoof development

echo "🟢 Installing woow ; the Woof Workbench"
dep installWoow development

echo "🟢 Plugins activation"
cd public && wp plugin activate --all && cd ..