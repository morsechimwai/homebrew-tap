class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.1.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "d88add5528ea0e8fc2ad2b56f51ed2717ff93bf3a8087d01ab71b1d6a1f23105"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.1.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "89e11953dfa6573935f50300927b23a6d24ea5332dcecccfe44439e7645c0e04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.1.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eefe5b78476b9d0846dc2dc4e7e20d44381912f7a580fd447edf3a35636f4541"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.1.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "747566d089e4e95ad7784f999c3a32c663f7ddd9960aab7e07863080b354af12"
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
