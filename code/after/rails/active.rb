# FLOG
# ----------------------
# 15.1: flog total
# 15.1: flog/method average
#
# 15.1: main#active?

def active?
  now      = Time.now
  earliest = begin_date.beginning_of_day + 6.hours
  latest   = end_date.end_of_day - 1.minute

  now >= earliest && now <= latest
end
