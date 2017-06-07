module Interstate
  class Environment

    def self.define(base)
      if active_record?(base)
        base.send(:include, ActiveRecordClass::InstanceMethods)
      else
        base.send(:include, Plain)
      end
    end

    def self.active_record?(base)
      base.ancestors.include?(ActiveRecord::Base) rescue false
    end
  end
end