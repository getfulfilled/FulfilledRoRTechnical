class MyMetadataClass
  include MetadataAccessor

  attr_accessor :temp_data

  def initialize
    metadata_accessor :temp_data, as: :metadata
  end
end
