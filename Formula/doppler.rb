# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "3.3.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.3.3/doppler_3.3.3_macOS_amd64.tar.gz"
    sha256 "73bbd99345fe82d2ac276ca0522d7fa204854bafbddf197818335e7e8da648a2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.3.3/doppler_3.3.3_linux_amd64.tar.gz"
      sha256 "233a7501fb6ae1c0da5df820c5086a1bbde94d9fcc28008f100f00f92966df69"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.3.3/doppler_3.3.3_linux_arm64.tar.gz"
        sha256 "ed3c2723730d9271749bba55b1e37a7ed97920de56eb37b3e433c50fb281db86"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.3.3/doppler_3.3.3_linux_armv6.tar.gz"
        sha256 "abff7dcfd7491445bd914aa27a53a2ddf01f844afe14d74e67e9a73f2812a8d5"
      end
    end
  end

  def install
    bin.install "doppler"
  end

  test do
    system "#{bin}/doppler --version"
  end
end
