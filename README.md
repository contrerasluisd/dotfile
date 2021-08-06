# dotfile

---

To make a custom environment to new mac, for work and home.

## **Pre install Install**

---

- Install Xcode:

    ```bash
    xcode-select --install
    ```

## **🎉 Install dot-files**

---

```bash
cd ~
git clone git@github.com:contrerasluisd/dotfile.git .dotfile
cd ~./dotfile
./install
# 🎉🎉🎉 done 😏
```

## 👨‍💻Setup all configurations:

---

### 🍺 **[Homebrew](https://brew.sh/)**

- install `homebrew`:

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ```

- Install all brew apps, fonts and commands:

    ```bash
    # List all apps can install
    brew search --casks
    # 🍺 to install all in the Brewfile, in the local directory
    brew bundle
    ```

### > **setup `nvm`**

---

```bash
# 𝗡ode version manager
nvm -h
nvm install node
nvm install lts
nvm install v12.18.1
nvm alias default 12.18.1
nvm use default
```

### 👽 **[zim](https://github.com/zimfw/zimfw)**

---

```bash
# 🖥 to fix problem with the start zsh
compaudit | xargs chmod g-w
```

### #️⃣ **ssh**

---

```bash
#👨‍💻this to make a rsa
ssh-keygen -o -t rsa -b 4096 -C "mi-mail@example.com"
pbcopy < ~/.ssh/id_rsa.pub
# or the other one ed
ssh-keygen -t ed25519 -C "mi-mail@example.com"
pbcopy < ~/.ssh/id_ed25519.pub
# to avoid enter the phrase all time
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
```

## 📝TODO List:

---

- [x]  add dotbot with `git submodule`
- [x]  setup dotbot `install.sh`
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
- [x]  add installations with `brew` all app dependencies
    - [x]  VSCode
    - [x]  iTerm2
    - [x]  Notion
    - [x]  Others more
- [ ]  add in `git` config handler git account
- [x]  add config to `alacritty`
