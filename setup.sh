git submodule update --init --recursive
mkdir -p blog/public
cd blog
git clone https://github.com/tommyshem/tommyshem.github.io.git ./public 
cd ../..