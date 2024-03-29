# env
My personal environment variables.

## Prerequisites

- [Zsh](https://en.wikipedia.org/wiki/Z_shell)
- [Prezto](https://github.com/sorin-ionescu/prezto)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Homebrew (Mac)](https://brew.sh/)

## Installation

### Linux

```bash
sudo apt install zsh
```

### Mac

```bash
brew install zsh zsh-completions
```

### Install Prezto

```bash
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

```bash
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

#### Set Zsh as default shell

```bash
chsh -s /bin/zsh
```

#### Install kubectl

```bash
brew install kubectl
```

#### Install kubectl plugins

Follow instructions to [install Krew](https://krew.sigs.k8s.io/docs/user-guide/setup/install/).

```bash
kubectl krew install ctx
kubectl krew install ns
kubectl krew install tree
kubectl krew install score
kubectl krew install stern
```

#### Install fzf

[fzf](https://github.com/junegunn/fzf) is a general-purpose command-line fuzzy finder.

```bash
brew install fzf
```

#### Install nvm, node.js, npm, and yarn

Check the GitHub project page for the latest release of [NVM](https://github.com/nvm-sh/nvm).

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v{version}/install.sh | bash
```

```bash
nvm install --lts
nvm ls
```

```bash
npm install -g yarn
```

#### Install Vue CLI

```bash
yarn global add @vue/cli
```

#### Misc

Display how the different colors look in the terminal:

```bash
for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
```
