## YADM Installation and Dotfiles Setup

This guide provides a quick way to install yadm and clone the dotfiles repository.

### Installation

Run the following command to install yadm:

```bash
sudo sh -c 'curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && chmod a+x /usr/local/bin/yadm'
```

### Cloning the Dotfiles Repository

Once yadm is installed, clone the dotfiles repository:

```bash
yadm clone https://github.com/diptanw/.dotfiles.git
```

### Bootstrap the software installation

```bash
yadm checkout home
yadm bootstrap
```




