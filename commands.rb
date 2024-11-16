class MyScript < Formula
  desc "Custom commands designed to streamline directory navigation, file listing, and screen clearing, with distinct functionalities based on specific use cases."
  homepage "https://github.com/jaredmiller219/Custom-Terminal-Commands"
  url "https://raw.githubusercontent.com/jaredmiller219/Custom-Terminal-Commands/main/custom_commands.sh", :using => :curl
  sha256 "16f30b7cc350cc045e46e2cb786494ca7a91fe0ee8b4a1b5ffd7fe23b7cdb9d7"

  def install
    bin.install "custom_commands.sh"
    bin.install_symlink "custom_commands.sh" => "custom-commands"
  end

  test do
    system "#{bin}/custom-commands", "--help"
  end
end
