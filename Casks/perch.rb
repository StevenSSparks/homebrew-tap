# Homebrew CASK for the native desktop app. Belongs in the tap at
# StevenSSparks/homebrew-tap/Casks/perch.rb.
#
#   brew install --cask stevenssparks/tap/perch     # native windowed Mac app
#
# (The FORMULA — `brew install stevenssparks/tap/perch` — installs the headless
# perch + coop CLI binaries for servers/Raspberry Pi. Cask = the .app; formula =
# the daemons. Two audiences, one tap.)
#
# The url points at the signed + notarized Perch.app produced by
# packaging/build-app.sh (NOTARIZE=1) and uploaded to the release.
cask "perch" do
  version "0.1.6"
  sha256 "528485a05b4eff83b3905a803794a35737f97e8bb6c640048df25f7192853b61"

  url "https://github.com/StevenSSparks/homebrew-tap/releases/download/v#{version}/Perch-#{version}-macos.zip"
  name "Perch"
  desc "Meshtastic command center — native dashboard + bundled capture engine"
  homepage "https://github.com/StevenSSparks/perch"

  depends_on macos: :big_sur

  app "Perch.app"

  # Perch bundles Coop; both live inside the .app. Clean up user data on `zap`.
  zap trash: [
    "~/Library/Application Support/Perch",
    "~/.config/perch",
  ]
end
