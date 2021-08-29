50.times do
  title = Faker::Hipster.sentence(word_count: 3)
  body = Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 4)
  @q = Question.create title: title, body: body
  50.times do |i|
    body = Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 4)
    Answer.create question_id: @q.id, body: body 
  end
end
