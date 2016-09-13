FactoryGirl.define do
  factory(:user) do
    name('Ushinosuke')
    email('House of Yagyu')
    password('foo')
    password_confirmation('foo')
  end
  factory(:question) do
    content('What is the air made of?!?')
    association :user, factory: :user
  end
end
