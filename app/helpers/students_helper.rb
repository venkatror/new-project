module StudentsHelper
def verifystudent (s)
  if s.email == "admin@me.com"
    return false
  else
    return true
  end

end
end
