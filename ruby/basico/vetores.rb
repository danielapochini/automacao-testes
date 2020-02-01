=begin vetor [1,2,3,4,5]

#hash = {"keys", "valor"}

hashes {"a" => "1", "b" => "2"}
hashes ["a"]
hashes {a: "1", b: 2}
hashes [:a] =end
=end

vetor = [1,2,3,4,5]
vetor.each  do |i|
    puts i 
end