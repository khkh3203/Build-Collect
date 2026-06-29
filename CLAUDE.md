# Build-Collect

Roblox 게임 프로젝트 (Rojo 기반).

## 구조

코드는 `src/` 아래 `.luau` 파일로 작성하며, shared / server / client 3계층으로 나뉩니다.

| 디렉터리      | Rojo 매핑 위치                                  | 용도                    |
| ------------- | ----------------------------------------------- | ----------------------- |
| `src/shared`  | `ReplicatedStorage.Shared`                      | 서버·클라이언트 공유 코드 |
| `src/server`  | `ServerScriptService.Server`                    | 서버 전용 코드          |
| `src/client`  | `StarterPlayer.StarterPlayerScripts.Client`     | 클라이언트 전용 코드     |

매핑은 `default.project.json` 에 정의되어 있습니다.

## 개발 (Rojo serve 중심)

```sh
rojo serve
```

실행 후 Roblox Studio의 Rojo 플러그인에서 `Connect` 하면 `src/` 변경이 Studio에 실시간 반영됩니다.

## 작업 규칙

- **스크립트(코드)는 git으로 관리**합니다. (`src/` 아래 `.luau`)
- **에셋(모델·이미지·사운드 등)은 Studio에서 관리**합니다. (git에 빌드 산출물 `.rbxl`/`.rbxlx` 등은 커밋하지 않음 — `.gitignore` 참고)
- **모든 변경은 `main` 직접 작업 금지.** feature 브랜치를 만들어 작업하고, 커밋 후 push → PR로 머지합니다.
  - **예외: `JunJun`** (git user) 은 `main` 직접 작업이 허용됩니다.
