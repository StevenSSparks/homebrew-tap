cask "perch" do
  version "0.1.23"
  sha256 "9d36b272932f11125a8790a73ddbeea01e588eb8b18ec67034ea96ce3626d8b3"

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
