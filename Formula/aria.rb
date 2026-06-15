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
  version "0.1.4"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "36fc7e2ef51ffaa3fad5e1905e3c30c6ad3a822e5c2568602e684450768134d4"
    end
    on_intel do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "fce64f2627781fa308229b3b9e41eb7e36352dde9781397bb66b1ca4fd93d6ab"
    end
  end

  on_linux do
    url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "c3676cf5758bdcae3d789fb352362ab6bce54e76629d15e92e5242aab19506ba"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
