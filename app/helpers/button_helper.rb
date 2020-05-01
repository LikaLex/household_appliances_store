module ButtonHelper
  def show_button(path, label = "Show")
    link_to label, path, class: "btn btn-default btn-xs"
  end

  def edit_button(path, label = "Edit")
    link_to label, path, class: "btn btn-primary btn-xs"
  end

  def delete_button(path, label = "Delete")
    link_to label, path, :method => :delete, title: label, data: { confirm: 'Are you sure?', commit: "Continue" }, class: "btn btn-danger btn-xs"
  end
end