class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.6.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "70572003439268f4079d693e617d96e4be300de86941844f10515dac54e35640"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.6.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "dc63a26cbf238c3a4199d0d487b12fb34ff5686cff93004f8e79d89d83bd1247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.6.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7f607a427e60a2142de58afdc1a63ac54cb950f1a454ee625a44ba6489832312"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.6.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd41c97d06e454f6a5ad1bd9c8bf7ea82e35d653a5a051341a9c729cd5c0c71f"
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
