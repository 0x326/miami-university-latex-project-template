[Live Share]: https://visualstudio.microsoft.com/services/live-share/
[EditorConfig]: https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig
[LaTeX Workshop]: https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop
[Remote - Containers]: https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers

# miami-university-latex-project

Paper:

Distribution of work:

LaTeX guide: <https://en.wikibooks.org/wiki/LaTeX>

## Setup

```bash
git config core.autoCrlf input
```

Install the following Visual Studio Code extensions:

- [Remote - Containers]
- [EditorConfig]
- [Live Share]
- [LaTeX Workshop]

## Usage

Committing changes:

```bash
git add . -p
git commit
```

Building PDF:

```bash
# Inside Visual Studio Code dev container
make

# On commandline
docker run --rm -v "$(pwd):/pwd" --workdir /pwd blang/latex:ctanfull make
```
