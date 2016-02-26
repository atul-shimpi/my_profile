module KnowMeHelper
  def each_introduction
    introductions = YAML.load_file(Rails.root + 'db/introduction.yaml')

    question_no = 0
    introductions.each do |question|
      question_no += 1
      yield question_no, question['question'], question['answer']
    end

  end
end
