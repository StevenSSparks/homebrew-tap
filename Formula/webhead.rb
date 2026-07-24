class Webhead < Formula
  desc "Captive-portal appliance emulator — DNS funnel, HTTPS, live console, SSH shell"
  homepage "https://github.com/StevenSSparks/webhead"
  url "https://github.com/StevenSSparks/webhead/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "433f5b0c6597cba67103a6722f081b97318c908b8d9f279f62a1cb1cb546c946"
  license "MIT"
  head "https://github.com/StevenSSparks/webhead.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/stevenssparks/webhead/services.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match "webhead #{version}", shell_output("#{bin}/webhead version")
  end
end
