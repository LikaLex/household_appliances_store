module ButtonHelper
  def show_button(path, label = "Show")
    link_to label, path, class: "btn btn-default btn-xs"
  end

  def edit_button(path, label = "Edit")
    link_to label, path, class: "btn btn-primary btn-xs"
  end

  def delete_button(path, label = "Delete", button_class = "btn btn-danger btn-xs")
    button_to label, path, :method => :delete, :data => { :confirm => 'Are you sure?' }, class: button_class
  end
end