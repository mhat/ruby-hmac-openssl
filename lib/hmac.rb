module HMAC
  class MD5 
    def self.digest(key,text)
      OpenSSL::HMAC.digest('md5', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.hexdigest('md5', key, text)
    end
  end

  class SHA1
    def self.digest(key,text)
      OpenSSL::HMAC.digest('sha1', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.hexdigest('sha1', key, text)
    end
  end

  class SHA256 
    def self.digest(key,text)
      OpenSSL::HMAC.digest('sha256', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.hexdigest('sha256', key, text)
    end
  end

  class SHA384
    def self.digest(key,text)
      OpenSSL::HMAC.digest('sha256', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.digest('sha256', key, text)
    end
  end

  class SHA512 
    def self.digest(key,text)
      OpenSSL::HMAC.digest('sha512', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.digest('sha256', key, text)
    end
  end

  class RMD160
    def self.digest(key,text)
      OpenSSL::HMAC.digest('rmd160', key, text)
    end

    def self.hexdigest(key,text)
      OpenSSL::HMAC.digest('rmd160', key, text)
    end
  end

end
