# Thanks to: http://railspikes.com/2008/2/1/loading-seed-data
# Mainly added to allow running seeds multiple times
class ActiveRecord::Base
  # given a hash of attributes including the ID, look up the record by ID.
  # If it does not exist, it is created with the rest of the options.
  # If it exists, it is updated with the given options.
  #
  # Raises an exception if the record is invalid to ensure seed data is loaded correctly.
  #
  # Returns the record.

  # just in case Rails adds its own method with the same name
  raise "create_or_update is already defined" if ActiveRecord::Base.respond_to?(:create_or_update)

  def self.create_or_update(options = {})
    return nil if options.empty?

    id = options.delete(:id)

    record = find_by_id(id) || new
    record.id = id
    record.attributes = options
    record.save!

    record
  end
end
