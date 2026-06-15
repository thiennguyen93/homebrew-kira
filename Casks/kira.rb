cask "kira" do
  version "2.0.4"
  sha256 "af8055ae27a7a0b9e15b18c138fff3dbe62c385e8f7525e528fa73e995ba66a2"

  url "https://github.com/thiennguyen93/kira-release/releases/download/v#{version}/kira-#{version}-macOS.dmg"
  name "Kira"
  desc "AWS infrastructure and database client"
  homepage "https://github.com/thiennguyen93/kira-release"

  # The app updates itself in place, so Homebrew should not fight it.
  auto_updates true

  app "kira.app"

  caveats <<~CAVEATS
    ECS exec and database tunnels require the AWS Session Manager plugin:
      brew install --cask session-manager-plugin
  CAVEATS

  zap trash: [
    "~/.kira",
    "~/Library/Caches/dev.thiennguyen.kira",
    "~/Library/HTTPStorages/dev.thiennguyen.kira",
    "~/Library/Preferences/dev.thiennguyen.kira.plist",
    "~/Library/Saved Application State/dev.thiennguyen.kira.savedState",
    "~/Library/WebKit/dev.thiennguyen.kira",
  ]
end
