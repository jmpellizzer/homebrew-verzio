cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0"
  sha256 arm:   "a95177689628d71f436530a62249960d922f5d69fb7c0ec73295a3f6e936ad87",
         intel: "fa16b64fe8af84582552200da904a3c787e255d47afc41d70fe032d35fa6cf7b"

  url "https://ztydsycmuuscuepyzvch.supabase.co/storage/v1/object/public/verzio-releases/Verzio-#{arch}.zip"
  name "Verzio"
  desc "Your home for Mac updates"
  homepage "https://verzio.pro"

  depends_on macos: ">= :sonoma"

  app "Verzio.app"

  zap trash: [
    "~/Library/Application Support/Verzio",
    "~/Library/Caches/Verzio",
    "~/Library/Preferences/com.verzio.pro.plist",
  ]
end
