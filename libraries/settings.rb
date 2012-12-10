module NumbersD
  class Settings

    attr_reader :version, :checksum, :source, :user

    def initialize(version, checksum, source, user)
      @version, @checksum, @user = version, checksum, user
      @source = "#{source}/#{tar}"
    end

    def bin
      "numbersd"
    end

    def tar
      "#{bin}-#{version}.tar.gz"
    end

    def tar_dir
      "/var/tmp/#{tar}"
    end

    def home
      "/opt/#{bin}-#{version}"
    end

    def path
      "#{home}/#{bin}"
    end

    def installed?
      File.exists?(path)
    end

  end
end
