module StudentsHelper
  def date_ptbr(date)
    data = date
    data.strftime("%d/%m/%Y")
  end
end
