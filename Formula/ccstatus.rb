class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.4.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "7464591bdb6200ea372d276b62d67e6bf745d67c3a03b7d71e95007ec1682855"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.4.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "d2bbb4a0dba948fe100ebb74f5955160de63c2130f524d3e5f30cbe5d8f843d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.4.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fee21fbbea8fb5ab36db3d36263414a7a3eebb91af90f0e6ef2a33d51484dcfd"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.4.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4f3f55619cc2711c99bc765b55cb5d7d09b925547d3fa8618d0f7826eb98b30"
    end
  end

  def install
    bin.install "ccstatus"
  end

  test do
    output = pipe_output("#{bin}/ccstatus",
      '{"model":{"display_name":"Claude"},"context_window":{"context_window_size":1000000}}')
    assert_match "Claude", output
  end
end
