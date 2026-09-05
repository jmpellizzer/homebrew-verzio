# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.28"
  sha256 arm:   "1b109ac5da96f51ef89a0194f4c9affc4395b331da5d3835d26d8c79452e0fbc",
         intel: "3c29ebc91c2803b8ec01ff388e5b1e275f008051a7f74a30ddfd50254c7392f7"

  url "https://lffzrrxydtgtmfslfzun.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{version}-#{arch}.zip"
  name "Verzio"
  desc "App update manager"
  homepage "https://verzio.pro/"

  livecheck do
    url "https://verzio.pro/changelog/"
    regex(/Verzio[._\s-]+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :sonoma

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
