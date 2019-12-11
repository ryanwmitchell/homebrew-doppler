# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "0.5.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/v0.5.10/doppler_0.5.10_macOS_x86_64.tar.gz"
    sha256 "b4a9d79fb391633d36cb3035a63e91719b199b2c42739a0877fe652773c95e66"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/v0.5.10/doppler_0.5.10_linux_x86_64.tar.gz"
      sha256 "c1ccdddf4d79713d69250178981885423b3237cdab2882bba852d920542dd0fd"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/v0.5.10/doppler_0.5.10_linux_arm64.tar.gz"
        sha256 "a4c2559ae419c04987a77a6cd5a210a37d86592297b25e5723df4c27b9385958"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/v0.5.10/doppler_0.5.10_linux_armv6.tar.gz"
        sha256 "ad1b8d7b9def229673f4615c7818583991b9e628fa241affd37ce83aaf9d3b41"
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
