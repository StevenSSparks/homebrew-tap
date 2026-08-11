cask "perch" do
  version "0.1.26"
  sha256 "f436f3ad6de71405a96f16a1012eb039e9ff16876b7afd73eefe6386ea9b5077"

  url "https://github.com/StevenSSparks/perch-releases/releases/download/v#{version}/Perch-#{version}-macos.zip"
  name "Perch"
  desc "Command center for your Meshtastic mesh (includes the Coop engine)"
  homepage "https://perchmesh.dev"

  app "Perch.app"

  zap trash: [
    "~/.config/coop",
    "~/Documents/Coop",
  ]
end
