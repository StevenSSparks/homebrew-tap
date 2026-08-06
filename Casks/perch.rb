cask "perch" do
  version "0.1.24"
  sha256 "7aea64d9aebf7d6a063d11965e99894f96c9026edc5724ea3559c4a48e6ee5a2"

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
