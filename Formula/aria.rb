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
  version "0.1.2"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "cad99bf89d90961a61459861e00ac26239bb1010ee6ada8e61badc890021fdb7"
    end
    on_intel do
      url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "a5198326ad747c93916ec38344c4b6e64dbc454258a8da6843832bfdcaee610a"
    end
  end

  on_linux do
    url "https://github.com/ariahq/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "92e0f08bab403a2d500b9be117c234a3ce80af46d835e10c5673e1e258b3f812"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
