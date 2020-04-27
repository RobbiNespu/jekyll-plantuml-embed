# frozen_string_literal: true

require 'jekyll-plantuml/cores/logger'
require 'jekyll-plantuml/cores/processor'
require 'jekyll-plantuml/cores/register'

module Jekyll::PlantUML
  Logger.display_info
  Register.use 'plantuml-processor'
end
