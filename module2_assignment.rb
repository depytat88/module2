#Implement all parts of this assignment within (this) module2_assignment2.rb file

#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)

  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  #* calculate_word_frequency() - calculates result

  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.

  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
end

#  Implement a class called Solution. 
class Solution

  def initialize
    @arrayLineAnalyzers = []
    @higestCountAcrossLines = Hash.new{0}
  end


  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  def analyzers(hash)
    @hash1 = Hash[*hash.max_by {|key, value| value}]
    @higestCountAcrossLines.update(@hash1)
    puts @higestCountAcrossLines
  end  
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  def highest_count_words_across_lines()
    p @higestCountAcrossLines
  end 
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  def highest_count_across_lines
    puts @higestCountAcrossLines.max_by {|key, value| value}
  end 
  
  #  equal to the highest_count_across_lines determined previously.

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  def analyze_file(file)
    File.open(file).each do |line| 
      @arrayLineAnalyzers << line.gsub("\n", "")
    end
    @arrayLineAnalyzers1 = @arrayLineAnalyzers
    @count = 0
    @arrayLineAnalyzers1.each do |line|
      @arrayLineAnalyzersLine = line
      @arrayLineAnalyzersLine = @arrayLineAnalyzersLine.split
      # @lenght = @arrayLineAnalyzersLine.length
      
      @marks = @arrayLineAnalyzersLine.inject(Hash.new{0}){ |res, elem| 
        res[elem] += 1 
        res
      }
      # puts @marks.inspect
      @count += 1
      analyzers(@marks)
      
      # puts "line number + #{@count}"
    end 
    highest_count_words_across_lines
    highest_count_across_lines
    puts  @count
  end  
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  def calculate_line_with_highest_frequency()
  end 
  #  highest_count_words_across_lines attribute values
  def chighest_count_words_across_lines
  end
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in
  def print_highest_word_frequency_across_lines()
  end 
  #  highest_count_words_across_lines in the specified format
  def highest_count_words_across_lines
  end 
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file

  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.

  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format





end
