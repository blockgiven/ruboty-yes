step 'テスト用のRubotyがいる' do
  @ruboty = ::Ruboty::Robot.new
  @ruboty.run
end

step 'Rubotyの名前は:nameである' do |name|
  @ruboty.define_singleton_method(:name) do
    name
  end
end

step ':nameが:nameに:bodyと発言した' do |from, to, body|
  @ruboty.receive(from: from, to: to, body: body)
end

step ':nameは:nameに次のいずれかで答える:' do |from, to, table|
  expect(@ruboty.said).to be_any {|message|
    message.from == from && message.to == to && table.to_a.flatten.include?(message.body)
  }
end

step ':nameは:bodyとは答えない' do |from, body|
  expect(@ruboty.said).not_to be_any {|message|
    message.from == from && message.body.include?(body)
  }
end
