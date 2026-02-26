cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.3"
  sha256 arm:   "594268526dbc7b7cdb74772684cbb9bf1bc14136251f1e3190c4000e27ea6b67",
         intel: "24bd96a8e01e35d61ff789050d988303eb868a68af7fdef039ff9e404f53a96f"

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
