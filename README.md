Prerequisites to building can be installed on Ubuntu with:
```
sudo apt-get install -y cmake python3 python3-pip python3-setuptools python3-wheel ruby xmlstarlet aspell cargo
pip3 install xml2rfc abnf
sudo gem install cbor-diag
sudo cargo install --root /usr/local cddl
```

Then the document can be built with
```
cmake -S . -B build/default
cmake --build build/default
```
finally opened with
```
xdg-open build/default/draft-*.html
```
