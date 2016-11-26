module FdUtil
  def fd_date(date, format= :standard)
    date.present? ? I18n.l(date, format: format) : ''
  end

  def to_currency(number)
    number_to_currency(number)
  end

  def to_currency_without_precission(number)
    number_to_currency(number, precision: 0)
  end

end