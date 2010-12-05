class Photo < ActiveRecord::Base
  belongs_to :residence

  has_attached_file :image, :styles => {:thumb => "100x100>"}

  alias :ar_to_xml :to_xml
  def to_xml(options = {})
    procs = [
      Proc.new { |options| options[:builder].tag!('image-path', image.url) },
      Proc.new { |options| options[:builder].tag!('thumbnail-image-path', image.url(:thumb)) }
    ]

    options[:except] ||= []
    options[:except] += [:image_file_name]

    ar_to_xml(options.merge(:procs => procs))
  end
end
