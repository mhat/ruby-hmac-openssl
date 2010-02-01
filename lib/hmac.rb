module HMAC
  class Base < OpenSSL::HMAC
    def Base.digest(key, text)
      hmac = self.new(key)
      hmac.update(text)
      hmac.digest 
    end

    def Base.hexdigest(key, text)
      hmac = self.new(key)
      hmac.update(text)
      hmac.hexdigest
    end 
  end

  class MD5 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('md5'))
    end
  end

  class SHA1 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('sha1'))
    end
  end

  class SHA256 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('sha256'))
    end
  end

  class SHA384 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('sha384'))
    end
  end

  class SHA512 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('sha512'))
    end
  end

  
  class RMD160 < Base
    def initialize(key)
      super(key,OpenSSL::Digest::Digest.new('rmd160'))
    end
  end

end
