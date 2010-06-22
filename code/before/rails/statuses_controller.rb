# FLOG
# -------------------------
# 68.0: flog total
# 68.0: flog/method average
#
# 68.0: main#update

# PUT /statuses/1
# PUT /statuses/1.xml
def update
  @status = current_account.statuses.find(params[:id])
  respond_to do |format|
    if @status.update_attributes(params[:status])
      statuses = current_account.statuses.all
      statuses.each do |status|
        unless status.id == @status.id
          if status.position && (status.position >= @status.position)
            status.position = status.position + 1
            status.save
          end
        end
      end
      statuses = current_account.statuses.all
      previousStatusPosition = 0
      statuses.each do |status|
        status.position = previousStatusPosition + 1
        status.save
        previousStatusPosition = status.position
      end
      flash[:notice] = 'Status was successfully updated.'
      format.html { redirect_to(statuses_path) }
      format.xml  { head :ok }
    else
      format.html { render :action => "edit" }
      format.xml  { render :xml => @status.errors, :status => :unprocessable_entity }
    end
  end
end
