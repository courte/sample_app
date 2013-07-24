FactoryGirl.define do
	factory :user do
		name									"Jadzia Dax"
		email									"jdax@DS9.com"
		password							"foobar"
		password_confirmation	"foobar"
	end
end
