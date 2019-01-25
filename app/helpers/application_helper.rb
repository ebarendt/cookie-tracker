module ApplicationHelper
  def body_class_name
    [controller.class.name.remove(/Controller$/).underscore, controller.action_name].join(" ")
  end
end
