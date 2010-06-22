# FLOG
# ----------------------
# 9.0: flog total
# 9.0: flog/method average
#
# 9.0: main#active?

def active?
  now      = Time.now
  earliest = begin_date.strftime('%Y-%m-%d 06:00')
  latest   = end_date.strftime('%Y-%m-%d 23:59')

  now >= earliest && now <= latest
end
