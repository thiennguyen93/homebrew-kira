cask "kira" do
  version "2.0.5"
  sha256 "6c0486ed7dac018ce0001f2fdc588a1bc961028c626a0f88e51fddf008c38b47"

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
