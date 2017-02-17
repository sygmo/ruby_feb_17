require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should not save if first_name is empty' do
    user = User.new(first_name: "", last_name: "Maikowski", email: "Troy9915@yahoo.com", password: "password")
    expect(user).to be_invalid
  end

  it 'should not save if last_name is empty' do
    user = User.new(first_name: "Troy", last_name: "", email: "Troy9915@yahoo.com", password: "password")
    expect(user).to be_invalid
  end

  it 'should not save if email is empty' do
    user = User.new(first_name: "Troy", last_name: "Maikowski", email: "", password: "password")
    expect(user).to be_invalid
  end

  it 'should not save if email already exists' do
    user1 = User.new(first_name: "Troy", last_name: "Maikowski", email: "Troy9915@yahoo.com", password: "password1")
    user1.save
    user2 = User.new(first_name: "Kobe", last_name: "Bryant", email: "Troy9915@yahoo.com", password: "password2")
    expect(user2).to be_invalid
  end

  it 'should not save if email isn\'t in proper format' do
    user = User.new(first_name: "Troy", last_name: "Maikowski", email: "Troy.com", password: "password")
    expect(user).to be_invalid
  end

  it 'should not save if password is empty' do
    user = User.new(first_name: "Troy", last_name: "Maikowski", email: "Troy9915@yahoo.com", password: "")
    expect(user).to be_invalid
  end

  it 'should not save if passwords don\'t match' do
    pw2 = "password2"
    user = User.new(first_name: "Troy", last_name: "Maikowski", email: "Troy9915@yahoo.com", password: "password")
    expect(user.password).not_to eq(pw2)
  end

  it 'should not save if password is less than 6 characters long' do
    user = User.new(first_name: "Troy", last_name: "Maikowski", email: "Troy9915@yahoo.com", password: "passw")
    expect(user).to be_invalid
  end
end
