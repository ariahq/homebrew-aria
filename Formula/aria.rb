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
  version "0.1.8"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "dece153fb9760c1d4f23615ec47215f9996931d0bb2f06c5a326fcaab148e6d9"
    end
    on_intel do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "12f42232cfb9e4a7ba4e1a0071b1563fbef6caa6e14cfbf29045a8053fedbf3a"
    end
  end

  on_linux do
    url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "ce42f77b3dd33732e33ad287a5de07ac80295b2ad0deebebb1924a9bb861ad99"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
