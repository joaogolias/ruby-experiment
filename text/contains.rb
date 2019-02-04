res = {
    message: nil
}
verifier = false
if !res[:message].nil? and res[:message].downcase.include? "success"
    verifier = true
end

puts verifier
