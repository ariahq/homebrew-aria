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
  version "0.2.1"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "8c2c799fd49b758d4d753540f98eca3a3860e75fd3a9d35e9aec6ce0ccdbe3f5"
    end
    on_intel do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "ed00ee31d63a230d17b596854e9c7c134a732e6aeb45c37154d33bde2c5b999d"
    end
  end

  on_linux do
    url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "30d440d1e98295166989f5e1033fff744c8395d41c96686d5bdd16e72f86dece"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
