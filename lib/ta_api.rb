class Ta_Api
	validates_presence_of :id, :question, :email, :name, :slack_username

  def ta_patch(issue_id, resolution)
    response = HTTParty.patch("https://devcamp.com/hand_raises/#{issue_id}/?hand_raise[#{resolution}]")
    puts response.body
  end

  def ta_post(text)
    parsed_json = JSON.parse(text)
    HandRaise.create(hand_raise_id: parsed_json['hand_raise_id'],
                     question: parsed_json['question'], 
                     body: parsed_json['body'], 
                     email: parsed_json['email'], 
                     name: parsed_json['name'], 
                     guide: parsed_json['guide'], 
                     guide_url: parsed_json['guide_url'], 
                     hand_raise_error: parsed_json['hand_raise_error'],
                     status: parsed_json['status'],
                     slack_username: parsed_json['slack_username']
                     )

    options = { :body => {:status => text}, :basic_auth => @auth }
    self.class.post('/statuses/update.json', options)
  end
end