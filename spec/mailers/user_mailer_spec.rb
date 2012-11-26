require "spec_helper"

describe UserMailer do
  context '#welcome' do
    subject { UserMailer.welcome(user) }
    let(:user) { stub(email: 'user@example.com') }
    its(:from) { should include('jfigueir33@gmail.com') }
    its(:to) { should include(user.email) }
    its(:subject) { should == 'Welcome Friend!' }
  end
end
