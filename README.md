Setup development tool on Chrome OS Terminal (aka Crostini).

These scripts setup all the tools I need:
- NodeJS for React/NextJS apps
- Bash scripting (jq, httpie, dot)
- VSCode for coding
- python3, pip and pipenv
- golang
- docker
- Jupyter Lab server
- RStudio server

Known to work on:
- Google PixelBook

Requirements:
- Chromeos 69+
- Settings | Linux: Activated

Open the Terminal app, then

```bash
sudo apt update
sudo apt install git
git clone https://github.com/ukabu/dev-on-chromeos.git
cd dev-on-chromeos
./setup.sh
```
Answer questions...

Install script are more or less idempotent. This mean that you can rerun them to update or if it fails without causing any issues.
