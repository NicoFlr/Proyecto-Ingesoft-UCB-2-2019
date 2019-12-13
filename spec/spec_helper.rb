require 'simplecov'
require 'simplecov-console'
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Console,
]
SimpleCov.start do
  add_filter ".bundle"
  add_filter "template_steps"
  add_filter "/lib/errores/invalid_instruction.rb"
  add_filter "/lib/errores/out_of_field.rb"
  add_filter "/lib/errores/invalid_measures.rb"
end
