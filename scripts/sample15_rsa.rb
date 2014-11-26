#! ruby -Ku
# -*- encoding: utf-8 -*-

# RSA

require "base64"
require "openssl"
include OpenSSL::PKey

rsa = RSA.generate(2048)
puts rsa
puts rsa.public? # 公開鍵が含まれるかの有無
puts rsa.private? # 秘密鍵が含まれるかの有無

publicKey = rsa.public_key.to_s

pub = RSA.new(publicKey)
encrypted = pub.public_encrypt("kura is bocchi")
# \nを含まないBase64エンコードの場合はstrict_encode64を使う
puts "encrypted: " + Base64.strict_encode64(encrypted)

# 秘密鍵の暗号化なし
# privateKey = rsa.export()
privateKey = rsa.export(OpenSSL::Cipher::Cipher.new("aes256"),"passwd")
pri = RSA.new(privateKey)
decrypted = pri.private_decrypt(encrypted)
puts "decrypted: " + decrypted
