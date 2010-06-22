# FLOG
# -----------------
# 16.1: flog total
# 16.1: flog/method average
#
# 16.1: main#update

# app/views/controllers/statuses_controller.rb
def update
  @status = current_account.statuses.find(params[:id])
  if @status.update_attributes(params[:status])
    flash[:notice] = 'Status was successfully updated.'
    redirect_to(statuses_path)
  else
    render :action => "edit"
  end
end

# app/views/models/status.rb

after_update :adjust_account_statuses

def adjust_account_statuses
  statuses = account.statuses.reject{|s| s == self}

  statuses.each do |status|
    if status.position && (status.position >= position)
      status.position = status.position + 1
      status.save
    end
  end

  statuses = current_account.statuses.all
  previousStatusPosition = 0
  statuses.each do |status|
    status.position = previousStatusPosition + 1
    status.save
    previousStatusPosition = status.position
  end
end