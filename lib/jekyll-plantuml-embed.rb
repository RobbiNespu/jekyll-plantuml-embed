# frozen_string_literal: true

require 'jekyll-plantuml-embed/cores/logger'
require 'jekyll-plantuml-embed/cores/processor'
require 'jekyll-plantuml-embed/cores/register'

module Jekyll::PlantUML
  Logger.display_info
  Register.use 'plantuml-processor'
end
