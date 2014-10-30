=begin
Copyright 2014 Michal Papis <mpapis@gmail.com>

See the file LICENSE for copying permission.
=end

YARD::Tags::Library.define_tag "Hook#notify_observers block params", :notify_param, :with_types_and_name
YARD::Tags::Library.visible_tags << :notify_param

class DefineHookHandler < YARD::Handlers::Ruby::Base

  handles method_call(:define_hook)
  namespace_only

  def process
    namespace.groups = ["Hooks"]
    name = statement.parameters.first.jump(:tsymbol_content, :ident).source
    object = YARD::CodeObjects::MethodObject.new(namespace, name)
    object.group = namespace.groups.first
    register(object)
    parse_block(statement.last, :owner => object)

    # modify the object
    object.dynamic = true

    object.add_tag YARD::Tags::Tag.new("return", "the Observable instance", "Hook")

    # add custom metadata to the object
    object["custom_field"] = "Genrated by define_hook"

  end

end
