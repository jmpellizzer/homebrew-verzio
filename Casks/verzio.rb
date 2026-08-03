# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.21"
  sha256 arm:   "878809fcfb691ac52ce6fc681b7fab0ec78d79a0db461a89070c8d4aeed98061",
         intel: "ae7a92b65e36a892a66828283f36f8a129e3a87c51f019f9d3cf1943b98bdd62"

  url "https://github.com/jmpellizzer/Verzio/releases/download/v#{version}/Verzio-#{arch}.zip"
  name "Verzio"
  desc "App update manager"
  homepage "https://github.com/jmpellizzer/Verzio"

  depends_on macos: ">= :sonoma"

  app "Verzio.app"

  uninstall launchctl: "com.verzio.pro.PrivilegedHelper",
            quit:      "com.verzio.pro",
            delete:    "/Library/PrivilegedHelperTools/com.verzio.pro.PrivilegedHelper"

  zap trash: [
    "~/Library/Application Support/Verzio",
    "~/Library/Caches/com.verzio.pro",
    "~/Library/HTTPStorages/com.verzio.pro",
    "~/Library/Preferences/com.verzio.pro.plist",
    "~/Library/Saved Application State/com.verzio.pro.savedState",
  ]
end
