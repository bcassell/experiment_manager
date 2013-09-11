module ApplicationHelper
  def sortable(column, title = nil, secondary_sort = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction.downcase}" : nil
    direction = (column == sort_column && sort_direction == "ASC") ? "DESC" : "ASC"
    link_to title, params.merge(sort: column, direction: direction, secondary_sort: secondary_sort, page: nil), { class: css_class }
  end
end
