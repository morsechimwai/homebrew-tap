class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.5.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "e743d72acc243f7c86a99c94ff954b1046e589a156060839a0da73e96d26f928"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.5.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "5b2effd45d9819752d0225a053eaa8eaa105eef1ee7ea8531b015b557cf76ef1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.5.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62307c713e88f02794ba08ed6600388faf076df0fa953ae7d01f4f09caf1e199"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.5.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8cfa7d0014e94b2f4bd7c63329bcf81ed92dce07b4347fb2d229b5156e6a6c0"
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
