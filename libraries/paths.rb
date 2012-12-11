module NumbersD
  class Paths

    attr_reader :version, :checksum, :source, :user

    def initialize(version, checksum, source, user)
      @version, @checksum, @user = version, checksum, user
      @source = "#{source}/#{tar}"
    end

    def bin
      "numbersd"
    end

    def full_path
      "#{home}/#{bin}"
    end

    def tar
      "#{bin}-#{version}.tar.gz"
    end

    def tmp
      "/var/tmp/#{tar}"
    end

    def home
      "/opt/#{bin}-#{version}"
    end

    def installed?
      File.exists?(full)
    end

  end
end
