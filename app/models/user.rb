class User < ApplicationRecord
    validates :first_name, :last_name, :password_digest, :session_token, presence:true
    validates :email, presence:true, uniqueness:true
    validates :password, length: {minimum: 6, allow_nil:true}

    attr_reader :password

    after_initialize :ensure_session_token

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user
            if user.is_password?(password)
                return user
            end
        end
        return nil
    end

    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
        @password = password
    end

    def is_password?(password)
        password_object = BCrypt::Password.new(self.password_digest)
        password_object.is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end
end