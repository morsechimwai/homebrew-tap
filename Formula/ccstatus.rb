class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.2.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "685bd5fee8e5987fc70f481e14be569f4ec8672ad2d0ee79f1e88d82dd008b8d"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.2.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "ab41934c254ed25bc3998b3566cbe0df675b42c18e8b6b28584c0d5077bf6043"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.2.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c49b384a7f2b1c8817b457439da1a1b8f3e575cf7c301842805e220b712925f5"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.2.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "44413008a1c760cdd12adae87f3f0088b449ec9bb3a6400780e362458e81c0e7"
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
