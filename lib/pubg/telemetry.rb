module PUBG
  class Telemetry
    require "pubg/telemetry/log_base"
    require "pubg/telemetry/log_care_package_land"
    require "pubg/telemetry/log_care_package_spawn"
    require "pubg/telemetry/log_game_state_periodic"
    require "pubg/telemetry/log_item_attach"
    require "pubg/telemetry/log_item_detach"
    require "pubg/telemetry/log_item_drop"
    require "pubg/telemetry/log_item_equip"
    require "pubg/telemetry/log_item_pickup"
    require "pubg/telemetry/log_item_unequip"
    require "pubg/telemetry/log_item_use"
    require "pubg/telemetry/log_match_definition"
    require "pubg/telemetry/log_match_end"
    require "pubg/telemetry/log_match_start"
    require "pubg/telemetry/log_player_attack"
    require "pubg/telemetry/log_player_create"
    require "pubg/telemetry/log_player_kill"
    require "pubg/telemetry/log_player_login"
    require "pubg/telemetry/log_player_logout"
    require "pubg/telemetry/log_player_position"
    require "pubg/telemetry/log_player_take_damage"
    require "pubg/telemetry/log_vehicle_destroy"
    require "pubg/telemetry/log_vehicle_leave"
    require "pubg/telemetry/log_vehicle_ride"

    def initialize(args)
      @args = convert_data(args)
    end

    def original
      @args
    end

    def player_login
      @args.select { |data| data.type == "LogPlayerLogin" }
    end

    def player_create
      @args.select { |data| data.type == "LogPlayerCreate" }
    end

    def player_position
      @args.select { |data| data.type == "LogPlayerPosition" }
    end

    def player_attack
      @args.select { |data| data.type == "LogPlayerAttack" }
    end

    def item_pickup
      @args.select { |data| data.type == "LogItemPickup" }
    end

    def item_equip
      @args.select { |data| data.type == "LogItemEquip" }
    end

    def item_unequip
      @args.select { |data| data.type == "LogItemUnequip" }
    end

    def vehicle_ride
      @args.select { |data| data.type == "LogVehicleRide" }
    end

    def player_kill
      @args.select { |data| data.type == "LogPlayerKill" }
    end

    def player_take_damage
      @args.select { |data| data.type == "LogPlayerTakeDamage" }
    end

    def match_definition
      @args.select { |data| data.type == "LogMatchDefinition" }
    end

    def match_start
      @args.select { |data| data.type == "LogMatchStart" }
    end

    def game_state_periodic
      @args.select { |data| data.type == "LogGameStatePeriodic" }
    end

    def vehicle_leave
      @args.select { |data| data.type == "LogVehicleLeave" }
    end

    def player_logout
      @args.select { |data| data.type == "LogPlayerLogout" }
    end

    def item_attach
      @args.select { |data| data.type == "LogItemAttach" }
    end

    def item_drop
      @args.select { |data| data.type == "LogItemDrop" }
    end

    def item_use
      @args.select { |data| data.type == "LogItemUse" }
    end

    def care_package_spawn
      @args.select { |data| data.type == "LogCarePackageSpawn" }
    end

    def vehicle_destroy
      @args.select { |data| data.type == "LogVehicleDestroy" }
    end

    def care_package_land
      @args.select { |data| data.type == "LogCarePackageLand" }
    end

    def match_end
      @args.select { |data| data.type == "LogMatchEnd" }
    end

    private

    def convert_data(args)
      args.map do |node|
        Module.const_get("PUBG::Telemetry::#{node['_T']}").new(node)
      end
    end
  end
end
