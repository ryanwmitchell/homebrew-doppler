# This file was generated by GoReleaser. DO NOT EDIT.
class Doppler < Formula
  desc "The official Doppler CLI for managing your secrets and config"
  homepage "https://doppler.com"
  version "3.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DopplerHQ/cli/releases/download/3.0.0/doppler_3.0.0_macOS_x86_64.tar.gz"
    sha256 "846502f65ac6363bbcf277fa3ae1df59fca74969a084ea94e41165812a0735c2"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DopplerHQ/cli/releases/download/3.0.0/doppler_3.0.0_linux_x86_64.tar.gz"
      sha256 "31350759fe1355d1e05a05fc68b2416dcd571a2f383584199b6e3050eaca3abb"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/DopplerHQ/cli/releases/download/3.0.0/doppler_3.0.0_linux_arm64.tar.gz"
        sha256 "583b525a834ce05a8eb84baaf650bb7b94f55d9ee85b634fde6b495ca8d75626"
      else
        url "https://github.com/DopplerHQ/cli/releases/download/3.0.0/doppler_3.0.0_linux_armv6.tar.gz"
        sha256 "4abc5433f53fce376b5675615d054beae50cd1d721b4d73ff21989d51a58a7c4"
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
