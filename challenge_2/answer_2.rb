obj = 'age'
case obj.class
    when 0..17 then "Young"
    when 18..64 then "Adult"
    else "Senior"
end
