name "production"
description "For Prod"
cookbook "apache", "= 0.2.0"
override_attributes({
	"pci" => {
		"in_scope" => true
	}
})
