class User < ApplicationRecord
    validates :first_name, :last_name, :password_digest, :session_token, presence:true
    validates :email, presence:true, uniqueness:true
    validates :password, length: {minimum: 6, allow_nil:true}

    attr_reader :password

    before_validation :ensure_user_photo
    after_initialize :ensure_session_token

    has_one_attached :photo

    has_many :reviews,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Review

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
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

    def ensure_user_photo
        if !self.photo.attached?
            self.photo.attach(
                io: URI.open('https://welpadam-seeds.s3.us-west-1.amazonaws.com/welp_profile_pics/guest.webp'), 
                filename: 'guest.webp')
        end
    end
end
