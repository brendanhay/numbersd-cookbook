module NumbersD
  module Settings

    attr_reader :version, :checksum, :source, :user

    def initialize(version, checksum, source, user)
      @version, @checksum, @source, @user = version, checksum, source, user
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

    def installed?
      File.exists?(path)
    end

  end
end
