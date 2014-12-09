#! ruby -Ku
# -*- encoding: utf-8 -*-

# RSA署名

require "base64"
require "openssl"
include OpenSSL::PKey

data = 'Sign me!'
digest = OpenSSL::Digest::SHA256.new
#pkey = OpenSSL::PKey::RSA.new(2048)
pkey = OpenSSL::PKey::RSA.new(File.read('sample16_rsa2_rsa.pem'))
puts pkey
signature = pkey.sign(digest, data)
puts Base64.strict_encode64(signature)

# 署名検証
pub_key = pkey.public_key
puts pub_key.verify(digest, signature, data) # => true
