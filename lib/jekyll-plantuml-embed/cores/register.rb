# frozen_string_literal: true

module Jekyll::PlantUML
  class Register
    def self.walk(start, &block)
      Dir.foreach start do |x|
        path = File.join(start, x)
        if x == '.' or x == '..'
          next
        elsif File.directory?(path)
          block.call(path + '/')
          walk path
        else
          block.call(path)
        end
      end
    end

    def self.use(name)
      name = name.to_s.gsub(/-/, '').downcase
      name += 'processor' unless name.match(/processor$/)

      self.walk(File.join(File.dirname(__FILE__), '/../processors')) do |path|
        filename = File.basename(path, '.rb')
        next if filename.gsub(/-/, '').downcase != name

        Logger.log "use #{filename}"

        require path

        constants = Jekyll::PlantUML.constants.select do |c|
          c.downcase.to_s == name
        end

        next if constants.first.nil?

        _class = Jekyll::PlantUML.const_get(constants.first)

        next unless _class.is_a? Class

        _class.new
      end
    end
  end
end
