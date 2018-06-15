

module ApplicationHelper
    def get_last_revision
        @@last_revision ||= "#{SchemaMigration.last.version[6..7]}/#{SchemaMigration.last.version[4..5]}/#{SchemaMigration.last.version[0..3]}"
     end


end

