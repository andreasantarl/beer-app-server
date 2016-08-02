class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user, uniqueness: true
  has_many :tried_beers
  has_many :beers, through: :tried_beers
  # has_attached_file :photo,
  #                   :styles => { :medium => '300x300>',
  #                                :thumb => '100x100>' },
  #                   :storage => :s3,
  #                   :s3_credentials => '#{RAILS_ROOT}/config/s3.yml',
  #                   :path => ':attachment/:id/:style.:extension',
  #                   :bucket => 'andreasantarlasci'

  has_attached_file :photo,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "/images/:style/missing.png"
                    validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

                    def rename_photo
                      self.photo.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
                    end

                    before_post_process :rename_photo
end
