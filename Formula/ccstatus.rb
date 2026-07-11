class Ccstatus < Formula
  desc "Fast Claude Code status line with cached usage bars"
  homepage "https://github.com/morsechimwai/claude-status-line"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.3.0/ccstatus-aarch64-apple-darwin.tar.gz"
      sha256 "3628ad96df363ee895604522fd1643f90365a7a333708b7bfac1495146372bb2"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.3.0/ccstatus-x86_64-apple-darwin.tar.gz"
      sha256 "fd1e1f00585e643ce99f5a760c2c3bc2ff92cd79fe8929bc9afc534629c03493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.3.0/ccstatus-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f4ca723efe111201faf6c1959b54b43a42cd37c85188bed162a7772be017caa"
    end
    on_intel do
      url "https://github.com/morsechimwai/claude-status-line/releases/download/v0.3.0/ccstatus-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89d1763739b500713f04332ff34da9ebd74da00e4966254fc6d033981843f9e4"
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
