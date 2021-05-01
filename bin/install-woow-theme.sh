echo "🟢 Checking/Installing vuejs global requirements"

if [ $(which vue) ]; then
    echo "vuejs requirements already installed";
else
    echo "🟢 Installing @vue/cli"
    npm install -g @vue/cli

    echo "🟢 Installing vuejs @vue/cli-service-global"
    npm install -g @vue/cli-service-global
fi;

# ========================================================================================


echo "🟢 Installing  woow theme ; the woow test theme"
dep installWoowTheme development

