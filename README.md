# omz-theme

직접 만든 Oh My Zsh 테마 모음.

모든 테마에 현재 시간, Conda와 uv 환경, 현재 경로, Git 브랜치와 상태 표시.

테마별 차이는 사용자명과 호스트명 표시 여부.

## 테마

| Theme | User | Host | Format |
| --- | :---: | :---: | --- |
| `simple` | — | — | `[MM/DD HH:MM] (<conda>) (<uv>) <path> (<branch> ✔)` |
| `simple-user` | ✓ | — | `[MM/DD HH:MM] (<conda>) (<uv>) <user> <path> (<branch> ✔)` |
| `simple-host` | — | ✓ | `[MM/DD HH:MM] (<conda>) (<uv>) <host> <path> (<branch> ✔)` |
| `simple-user-host` | ✓ | ✓ | `[MM/DD HH:MM] (<conda>) (<uv>) <user>@<host> <path> (<branch> ✔)` |

Conda와 uv 환경은 활성화된 경우에만 표시. Conda의 `base` 환경은 생략.

Git 상태: 변경 없음 `✔` · 변경 있음 `✗`

## 설치

원하는 테마 파일을 Oh My Zsh 사용자 테마 디렉터리에 복사.

```sh
cp themes/simple.zsh-theme \
  "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/"
```

`~/.zshrc`에서 복사한 파일명을 확장자 없이 지정.

```sh
ZSH_THEME="simple"
```

설정 다시 불러오기.

```sh
source ~/.zshrc
```
