cask "perch" do
  version "0.1.25"
  sha256 "334b2064072b85afdd4511c2604fd2ccdfbe2157e7fdac29b316916824ff431a"

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
