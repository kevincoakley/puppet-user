require 'spec_helper'

describe 'user' do
  it { is_expected.to compile }
  it { is_expected.to compile.with_all_deps }

  describe 'user::create' do
    it do
      is_expected.to contain_user('tester').with(
        ensure: 'present',
        comment: 'Test User',
        home: '/home/tester',
        managehome: true,
        uid: 2018
      )
    end
  end

  describe 'user::ssh_authorized_key' do
    it do
      is_expected.to contain_ssh_authorized_key('tester').with(
        key: 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA==',
        type: 'ssh-rsa'
      )
    end
  end
end
