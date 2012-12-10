module NumbersD
  class Flags

    FLAGS = [
      :listeners,
      :http,
      :buffer,
      :resolution,
      :percentiles,
      :events,
      :prefix,
      :graphites,
      :downstreams,
      :broadcasts
    ]

    FLAGS.each { |name| attr_accessor name }

    def initialize(settings)
      @settings = settings
    end

    def command_line
      flags = FLAGS.map { |name| flag(name) }
      "#{@settings.path} #{flags.compact.join(' ')}"
    end

    def flag(name)
      val = send(name)
      unless val.nil?
        "--#{name}=#{value(val)}"
      end
    end

    def value(val)
      if val.is_a?(Array)
        val.compact.join(",")
      else
        val
      end
    end

  end
end
