cd hexo
hexo clean
hexo g
cd ../hexo-en
hexo clean
hexo g
cp -r public/. ../hexo/public/en/
cd ../hexo
hexo d
