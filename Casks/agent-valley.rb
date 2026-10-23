cask "agent-valley" do
  version "0.2.7"
  sha256 "b213e871cfa894dbd1eda57752237ff12f69a348e421167d1d90c0174ce74b7d"

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
    On 0.1 from Homebrew? Run brew uninstall --formula agent-valley, or it stays installed beside us.
    Coming from 0.1 with the plugin? We moved house: copy the plugin's command from Settings once more.
    Put the crew in your terminal? Run its install command from the Claude Code settings once more too.
  EOS
end
