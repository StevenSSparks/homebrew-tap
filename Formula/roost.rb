class Roost < Formula
  desc "RoostOS — a captive-portal appliance in a box: DNS, HTTPS, live console, SSH shell"
  homepage "https://roostos.dev"
  url "https://github.com/StevenSSparks/roost/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "686942bea0b1f08a9f4c206c2747e49b24a4ca64d56d53ed14ae4a5916303b82"
  license "MIT"
  head "https://github.com/StevenSSparks/roost.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/stevenssparks/roost/services.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "."
  end

  test do
    assert_match "roost #{version}", shell_output("#{bin}/roost version")
  end
end
