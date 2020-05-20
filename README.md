# env
My personal environment variables

## Prerequisites

- Zsh
- [Prezto](https://github.com/sorin-ionescu/prezto)
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

```console
chsh -s /bin/zsh
```
