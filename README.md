# homebrew-aria

  Homebrew tap for [Aria](https://aria-omega.vercel.app) — memory + team-sync layer for AI coding sessions.

  ## Install

  brew install ariahq/aria/aria

  Or in two steps:

  brew tap ariahq/aria
  brew install aria

  ## What's in the tap

  Just `Formula/aria.rb` — points at the pre-built binaries on this repo's
  [Releases](https://github.com/ariahq/homebrew-aria/releases) page.

  Three platforms ship: macOS arm64, macOS x86_64, Linux x86_64.

  ## After install

  aria login                  # browser handshake → mints a CLI token
  aria                        # start a coding session in the current repo
  aria install-cc-hooks       # (optional) mirror your Claude Code sessions into Aria

  ## Updating

  brew update
  brew upgrade aria

  If you used `install-cc-hooks`, re-run it after each upgrade so the hook
  wrapper points at the new binary path:

  aria install-cc-hooks

  ## Contact

  `hello@ariacode.dev`
