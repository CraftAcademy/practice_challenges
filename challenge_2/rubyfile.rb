case age
when 18..64
    'Adult'
  else
    if age >= 65
     'Senior'
   elsif age <= 17
     'Young'
    end
end
