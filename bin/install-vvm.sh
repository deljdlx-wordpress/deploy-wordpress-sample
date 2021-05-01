echo "🟢 Installing  vvw"
git clone git@github.com:deljdlx-wordpress/vvw.git ./frontend
cd frontend && npm install && cd ..

echo "🟢 Generating configuration file frontend/_configuration/Current.js"
cp frontend/_configuration/Current.sample.js frontend/_configuration/Current.js



echo "💛 To start vue-vuetify-wordpress front run those commands"
echo "cd frontend"
echo "npm run serve"