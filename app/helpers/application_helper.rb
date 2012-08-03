module ApplicationHelper
def isadmin
  if current_student.email=="admin@me.com"
    return true
  else
    return false
  end
end

end
