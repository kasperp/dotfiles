# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
npm install -g nave

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/code/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# add this to the bash_profile file if it aint there.
#   . ~/code/z/z.sh

# install source code pro font - thx to https://github.com/klaustopher/old-dotfiles/blob/master/script/bootstrap
curl -L "https://github.com/downloads/adobe/Source-Code-Pro/SourceCodePro_FontsOnly-1.009.zip">/tmp/adobe-sourcecode.zip
unzip -qq -j -d /tmp /tmp/adobe-sourcecode.zip "*.ttf"
sudo mv /tmp/SourceCodePro-*.ttf /Library/Fonts
rm /tmp/adobe-sourcecode.zip
echo " + SourceCode Pro Font was installed"