class Calculator

  def self.calculate(year)

    index_day = year.to_i
    index_day = index_day - 284
    index_day = index_day - 4
    index_day = index_day % 28
    index_day = index_day + (index_day / 4)
    index_day = index_day % 7

    day = year.to_i
    day = day - 284
    day = day - 1
    day = day % 19
    day = day * 11
    day = day % 30
    day = 40 - day
    if day<25
      month = 2
    else
      month = 1
    end

    day = day % 30

    if day == 0
      day = 30
    end

    day,month = nearst_sunday(index_day,day,month)
    result = day.to_s, month.to_s
  end
  def self.nearst_sunday(index_nayroz_day,day,month)
    index_day=0 ,index_start_month =0
    if month == 2
      index_start_month = index_nayroz_day
    else #month == 1
      index_start_month = index_nayroz_day - (2)
      if index_start_month <= 0
        index_start_month = index_start_month + 7
      end
    end
    diff = day - 1
    index_day = index_start_month + diff
    index_day = index_day % 7

    if index_day < 5
      day = day + 5 - index_day
    elsif index_day = 5
      day = day + 7
      if day > 30
        day = day % 30
        month = month + 1
      end
    else
      day = day + 12 - index_day
    end
    return day , month
  end
end
