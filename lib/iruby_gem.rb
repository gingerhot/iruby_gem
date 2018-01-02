require "iruby_gem/version"

module IrubyGem
  def self.install *args
    begin
      gem args.map(&:inspect).join(", ")
    rescue Gem::LoadError
      system("gem install #{args.map(&:inspect).join(' -v ')}")
      Gem.clear_paths
    end
  end
end

module Kernel
  def gem_install *args
    IrubyGem.install(*args)
  end

  alias gem_i gem_install
end
