module MetadataAccessor
  extend ActiveSupport::Concern

  def curry_singleton(new_name, old_name)
    define_singleton_method(new_name) do |*args|
      send(old_name, *args)
    end
  end

  def metadata_accessor(base, alias_name)
    custom_name = alias_name[:as] || base
    curry_singleton(:"#{custom_name}_set", :temp_data_set)
    curry_singleton(:"#{custom_name}_get", :temp_data_get)
  end

  def temp_data_set(data, value)
    hash_data = value
    data.split('.').reverse.each {|sub_data| hash_data = { sub_data => hash_data } }
    @temp_data = hash_data
  end

  def temp_data_get
    puts @temp_data
  end
end
