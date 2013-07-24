# Protects all Active Record resources' attributes by default
ActiveRecord::Base.send(:include, ActiveModel::ForbiddenAttributesProtection)