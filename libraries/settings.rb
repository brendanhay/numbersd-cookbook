module NumbersD
  module Settings

    attr_reader :version, :checksum, :user, :uri

    def initialize(version, checksum, user)
      @version, @checksum, @user, @uri = version, checksum, user, uri
    end

    def home
      "/opt/numbersd-#{version}"
    end

    def bin
      "numbersd"
    end

    def path
      "#{home}/#{bin}"
    end

    def tar
      "/var/tmp/#{bin}-#{version}.tar.gz"
    end

    def source
      throw NotImplemented
    end

    def installed?
      File.exists?(path)
    end

  end
end
