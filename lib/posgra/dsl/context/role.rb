class Posgra::DSL::Context::Role
  include Posgra::Logger::Helper
  include Posgra::TemplateHelper

  attr_reader :result

  def initialize(context, role, options, &block)
    @role = role
    @options = options
    @context = context.merge(:role => role)
    @result = {}
    instance_eval(&block)
  end

  def schema(name)
    # TODO:
  end
end
