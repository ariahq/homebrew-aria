# Homebrew formula for the aria CLI. This is the canonical copy — paste
# it into `taladari/homebrew-aria/Formula/aria.rb` on every release. The
# binaries live as Release assets on the tap repo itself so the source
# repo (`taladari/aria`) can stay private. See docs/RELEASING.md.
#
# Users install with:
#   brew install taladari/aria/aria
#
# Or:
#   brew tap taladari/aria
#   brew install aria

class Aria < Formula
  desc "Memory + team-sync layer for AI coding sessions"
  homepage "https://github.com/taladari/homebrew-aria"
  version "0.1.0"
  # Source-available; no open-source license. See repo README.

  on_macos do
    on_arm do
      url "https://github.com/taladari/homebrew-aria/releases/download/v#{version}/aria-macos-arm64"
      sha256 "d7d101a12a45c1499adb35c1af42de4a66eed1c99e5403a80b280beba442c291"
    end
    on_intel do
      url "https://github.com/taladari/homebrew-aria/releases/download/v#{version}/aria-macos-x86_64"
      sha256 "4db6cbfd2d52e98f664efa02b0a3443fce424bbbcf0413b8c064d1f51b01a25f"
    end
  end

  on_linux do
    url "https://github.com/taladari/homebrew-aria/releases/download/v#{version}/aria-linux-x86_64"
    sha256 "9f0ff0f9e5d240f8d760907f22a9dc14a0be4457e1aa94da985e462488928452"
  end

  def install
    bin.install Dir["aria*"].first => "aria"
  end

  test do
    assert_match(/Usage:\s+aria/, shell_output("#{bin}/aria help"))
  end
end
