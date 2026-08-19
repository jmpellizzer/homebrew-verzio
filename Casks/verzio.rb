# typed: strict
# frozen_string_literal: true

cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.25"
  sha256 arm:   "710a41a7fc04d6432606d8bf938488592e8ed10853beb6b44ba962484e47904b",
         intel: "37339989d4a956d3c6e720a613caa4fd3bc734c5e44f8933a4ed5fc4877886c1"

  url "https://lffzrrxydtgtmfslfzun.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{version}-#{arch}.zip"
  name "Verzio"
  desc "App update manager"
  homepage "https://verzio.pro/"

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
