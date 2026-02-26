cask "verzio" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "2aba81074806b4f4c286a0f4859adce8891f3dad1f37272d3cac442dd92c6e7a",
         intel: "5fdf1e66ea5db0dccec69aacec804ee559466d958b032bf849a231bef0e1a8b2"

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
