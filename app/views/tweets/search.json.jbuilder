json.array! @tweets do |tweet|
  json.id tweet.id
  json.title tweet.title
  json.text tweet.text
  json.image tweet.image
  json.user_id tweet.user_id
  json.name tweet.user.name
  json.user_sign_in current_user
end