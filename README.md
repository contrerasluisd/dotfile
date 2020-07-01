# dotfile

---

Para tener centralizados mi configuración de entorno de trabajo

## **Pre install Install**

### **👉 [Homebrew](https://brew.sh/)**

---

- Instalar homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

- Instalar posteriormente las dependencias

```bash
# 🍺
brew install pstree
brew install nvm
brew install tldr
brew install exa
brew install tree
brew install gpg
brew install python
pip install --user powerline-status
pip3 install --user powerline-status
brew install jq
#tool to work
brew cask install osxfuse
brew install datawire/blackbird/telepresence\
```

### **👉 setup `nvm`**

---

```bash
# 𝗡ode
nvm -h
nvm install node
nvm install lts
nvm install v12.18.1
nvm alias default 12.18.1
nvm use default
```

### **👉 [zim](https://github.com/zimfw/zimfw)**

---

```bash
# 🖥
#to fix problem with the start zsh
compaudit | xargs chmod g-w
```

### **👉 ssh**

---

```bash
#👨‍💻this to make a rsa
ssh-keygen -o -t rsa -b 4096 -C "luis.contreras@naranjax.com"
pbcopy < ~/.ssh/id_rsa.pub
# or the other one ed
ssh-keygen -t ed25519 -C "luis.contreras@naranjax.com"
pbcopy < ~/.ssh/id_ed25519.pub
# to avoid enter the phrase all time
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
```

## **🎉 Install dot-files**

```bash
cd ~./dotfile
./install
# 🎉🎉🎉 done 😏
```

## TODO List:

---

- [x]  add dotbot with `git submodule`
- [x]  setup dotbit `install.sh`
- [x]  add zimfw whit `git submodule`
- [x]  add configuration to `zsh`
- [x]  add configuration to `git`
- [x]  make the documentation
- [x]  make config to `VSCode`
- [x]  make config to `iTerm2`
- [x]  add configuration to `vim`
- [x]  add `vim` extensions with `git module`
- [x]  add customs aliases
- [ ]  add font repo as `git submodule`