# FLOG
# ------------------------------
# 10.9: flog total
# 10.9: flog/method average
#
# 10.9: main#active?

def active?
  today = Time.now.strftime('%Y-%m-%d %H:%M')
  today >= self.begin_date.strftime('%Y-%m-%d 06:00') && today <= self.end_date.strftime('%Y-%m-%d 23:59')
end
