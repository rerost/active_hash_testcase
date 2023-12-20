# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

desc "YAMLを生成"
task generate_sample_yaml: :environment do
  # [Prompt]
  # Rubyでquestions.ymlとchips.ymlを生成するコードを書いてください。
  # quesitons.ymlは
  # * id 1からの数字。連番
  # * text 質問文。text_<id>の形式
  #
  # chips.ymlは
  # * id 1からの数字。連番
  # * text 質問文。chip_<id>の形式
  # * questions_id はquestions.ymlのid
  #
  # を生成してください。
  #
  # questionsは500個、chipsは4000個生成してください。
  # 1 questionsに対してchipsが8個接続されるように、questions_idは生成されます。

  require 'yaml'

  # Generating questions.yml
  questions = []
  (1..500).each do |id|
    questions << { 'id' => id, 'text' => "text_#{id}" }
  end

  File.open("questions.yml", "w") do |file|
    file.write(questions.to_yaml)
  end

  # Generating chips.yml
  chips = []
  (1..4000).each do |id|
    question_id = (id - 1) / 8 + 1  # 8 chips per question
    chips << { 'id' => id, 'text' => "chip_#{id}", 'questions_id' => question_id }
  end

  File.open("chips.yml", "w") do |file|
    file.write(chips.to_yaml)
  end
end