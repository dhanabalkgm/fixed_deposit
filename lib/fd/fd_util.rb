module FdUtil
  def fd_date(date, format= :standard)
    date.present? ? I18n.l(date, format: format) : ''
  end
end