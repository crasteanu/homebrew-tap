cask "cairn" do
  version "1.0.0"
  sha256 "8a448c57747373aea524aa6c5631a936932ab1e4147043c4604cf301fa8832bc"

  url "https://github.com/crasteanu/cairn-releases/releases/download/v#{version}/Cairn-#{version}-universal.dmg",
      verified: "github.com/crasteanu/cairn-releases/"
  name "Cairn"
  desc "Native macOS storage cleaner, developer & AI cache cleaner, and system monitor"
  homepage "https://crasteanu.github.io/cairn-releases/"

  livecheck do
    url "https://crasteanu.github.io/cairn-releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sonoma"

  app "Cairn.app"

  zap trash: [
    "~/Library/Application Support/Cairn",
    "~/Library/Caches/com.crasteanu.cairn",
    "~/Library/Preferences/com.crasteanu.cairn.plist",
  ]
end
