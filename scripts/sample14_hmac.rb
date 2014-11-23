#! ruby -Ku
# -*- encoding: utf-8 -*-

# HMAC
#
# `require': cannot load such file -- openssl (LoadError)
#
# need openssl and re-build
#
# $ sudo yum install openssl-devel
# $ ruby-build 1.9.3-p551 ~/.rbenv/versions/1.9.3-p551 --with-openssl-dir=/usr/local
#
# http://stackoverflow.com/questions/11126105/installing-openssl-in-ruby-rbenv
# https://gist.github.com/HatemMahmoud/1200482

require 'openssl'

secret = 'bocchi'
data   = 'kurakura'

puts "HMAC SHA256:"
puts OpenSSL::HMAC::hexdigest(OpenSSL::Digest::SHA256.new, secret, data)
puts "HMAC SHA384:"
puts OpenSSL::HMAC::hexdigest(OpenSSL::Digest::SHA384.new, secret, data)
puts "HMAC SHA512:"
puts OpenSSL::HMAC::hexdigest(OpenSSL::Digest::SHA512.new, secret, data)
