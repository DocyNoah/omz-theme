# omz-theme

직접 만든 Oh My Zsh 테마 모음.

기본 테마는 현재 시간, 활성 uv 환경, 현재 경로, Git 브랜치와 상태를 표시합니다.

## 테마 선택

사용자명과 호스트명을 표시할지에 따라 테마를 고릅니다.

| `ZSH_THEME` | 사용자명 | 호스트명 | 표시 형식 |
| --- | :---: | :---: | --- |
| `uv/simple` | — | — | `[MM/DD HH:MM] (<uv>) <path> (<branch> ✔)` |
| `uv/simple-user` | ✓ | — | `[MM/DD HH:MM] (<uv>) <user> <path> (<branch> ✔)` |
| `uv/simple-host` | — | ✓ | `[MM/DD HH:MM] (<uv>) <host> <path> (<branch> ✔)` |
| `uv/simple-user-host` | ✓ | ✓ | `[MM/DD HH:MM] (<uv>) <user>@<host> <path> (<branch> ✔)` |

Git 작업 트리에 변경이 없으면 `✔`, 변경이 있으면 `✗`를 표시합니다.

## 설치

저장소 루트에서 `themes/uv/`의 테마 파일을 Oh My Zsh 사용자 테마 경로의 `uv/` 폴더에 복사합니다. 아래 예제는 `simple` 기준입니다.

```sh
theme_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/uv"
mkdir -p "$theme_dir"
cp themes/uv/simple.zsh-theme "$theme_dir/"
```

`~/.zshrc`에서 Oh My Zsh를 불러오기 전에 `ZSH_THEME`을 지정한 후 새 터미널을 엽니다. 다른 테마를 설치할 때는 파일명과 설정값에 표에서 고른 이름을 사용합니다.

```sh
ZSH_THEME="uv/simple"
```

## Conda 지원

`themes/conda-uv/`에는 활성 Conda 환경과 uv 환경을 함께 표시하는 네 가지 테마가 있습니다. Conda 환경은 uv 환경 앞에 표시하며 `base`는 생략합니다.

설치할 파일을 Oh My Zsh 사용자 테마 경로의 `conda-uv/` 폴더에 복사합니다.

```sh
theme_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/conda-uv"
mkdir -p "$theme_dir"
cp themes/conda-uv/simple.zsh-theme "$theme_dir/"
```

`~/.zshrc`의 테마 이름에도 `conda-uv/`를 붙입니다.

```sh
ZSH_THEME="conda-uv/simple"
```
