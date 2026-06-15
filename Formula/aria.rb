# Homebrew formula for the aria CLI. This is the canonical copy — paste
# it into `ariahq/homebrew-aria/Formula/aria.rb` on every release. The
# binaries live as Release assets on the tap repo itself so the source
# repo (`taladari/aria`) can stay private. See docs/RELEASING.md.
#
# Users install with:
#   brew install ariahq/aria/aria
#
# Or:
#   brew tap ariahq/aria
#   brew install aria

class Aria < Formula
  desc "Memory + team-sync layer for AI coding sessions"
  homepage "https://github.com/ariahq/homebrew-aria"
  version "0.1.1"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "19564b69c04ca05764f391fbfed294ed7aba5a71608ad317b4bd3e2dc410befc"
    end
    on_intel do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "61715f619527fd6eef9ad7270e8a1e6184446ae939ab7811353963ad5d73a94c"
    end
  end

  on_linux do
    url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "c799405722e5e5074856184765146b9e1b73e6f390cf5cda1cba4e3512f593ad"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
