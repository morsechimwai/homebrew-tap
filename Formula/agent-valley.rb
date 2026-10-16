class AgentValley < Formula
  desc "Every Claude Code agent and sub-agent at a glance, in the notch of your Mac"
  homepage "https://agentvalley.app"
  url "https://github.com/morsechimwai/agent-valley.git",
      tag:      "v0.1.0",
      revision: "e7ceb20f71dea5bb1b56217e0e5a3d3e07a4ca02"
  license "MIT"
  head "https://github.com/morsechimwai/agent-valley.git", branch: "main"

  depends_on macos: :sequoia

  def install
    # Builds the app from the source and signs it ad hoc, as a build of your own:
    # macOS opens it without asking, as it would not an app downloaded unsigned.
    system "./build-app.sh", prefix
  end

  def caveats
    <<~EOS
      Open it:
        open "#{opt_prefix}/AgentValley.app"

      To find it in your Applications folder too:
        mkdir -p ~/Applications && ln -sf "#{opt_prefix}/AgentValley.app" ~/Applications/
    EOS
  end

  test do
    app = prefix/"AgentValley.app"
    assert_predicate app/"Contents/MacOS/AgentValley", :executable?
    system "codesign", "--verify", "--strict", app
  end
end
