hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, v| # _ signify the argument we're not using
  v.each do |word|
    word.each_char do |char|
      puts char if 'aeiouAEIOU'.include?(char)
    end
  end
end
