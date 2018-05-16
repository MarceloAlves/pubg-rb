build:
	rm -rf *.gem
	gem build *.gemspec

install: build
	gem install ./*.gem

console:
	./bin/console

setup:
	./bin/setup

test:
	rake spec

release:
	bundle exec rake release

update-assets:
	curl https://raw.githubusercontent.com/pubg/api-assets/master/dictionaries/telemetry/damageTypeCategory.json -o lib/pubg/telemetry/lookup/assets/damage_type_category.json
	curl https://raw.githubusercontent.com/pubg/api-assets/master/dictionaries/telemetry/damageCauserName.json -o lib/pubg/telemetry/lookup/assets/damage_causer_name.json
	curl https://raw.githubusercontent.com/pubg/api-assets/master/dictionaries/telemetry/vehicle/vehicleId.json -o lib/pubg/telemetry/lookup/assets/vehicle_id.json
	curl https://raw.githubusercontent.com/pubg/api-assets/master/dictionaries/telemetry/item/itemId.json -o lib/pubg/telemetry/lookup/assets/item_id.json
	curl https://raw.githubusercontent.com/pubg/api-assets/master/dictionaries/telemetry/common/mapName.json -o lib/pubg/telemetry/lookup/assets/map_name.json
