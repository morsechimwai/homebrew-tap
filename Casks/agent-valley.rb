cask "agent-valley" do
  version "0.2.0"
  sha256 "0fa54d6fd38203f20c58a45f8e03c51f3f32c8fbb35e2260fcda9888ac938c86"

  url "https://github.com/morsechimwai/agent-valley/releases/download/v#{version}/AgentValley.dmg"
  name "AgentValley"
  desc "Every Claude Code agent and sub-agent at a glance, in the notch"
  homepage "https://agentvalley.app/"

  livecheck do
    url "https://github.com/morsechimwai/agent-valley/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "AgentValley.app"

  zap trash: [
    "~/Library/Application Support/AgentValley",
    "~/Library/Caches/com.morsechimwai.agent-valley",
    "~/Library/Preferences/com.morsechimwai.agent-valley.plist",
  ]

  caveats <<~EOS
    Coming from 0.1 with the plugin? We moved house: copy the plugin's command from Settings once more.
    Put the crew in your terminal? Run its install command from the Actions settings once more too.
  EOS
end
