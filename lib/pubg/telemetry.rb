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

    def playerLogin
      @args.select { |data| data.type == "LogPlayerLogin" }
    end

    def playerCreate
      @args.select { |data| data.type == "LogPlayerCreate" }
    end

    def playerPosition
      @args.select { |data| data.type == "LogPlayerPosition" }
    end

    def playerAttack
      @args.select { |data| data.type == "LogPlayerAttack" }
    end

    def itemPickup
      @args.select { |data| data.type == "LogItemPickup" }
    end

    def itemEquip
      @args.select { |data| data.type == "LogItemEquip" }
    end

    def itemUnequip
      @args.select { |data| data.type == "LogItemUnequip" }
    end

    def vehicleRide
      @args.select { |data| data.type == "LogVehicleRide" }
    end

    def playerKill
      @args.select { |data| data.type == "LogPlayerKill" }
    end

    def playerTakeDamage
      @args.select { |data| data.type == "LogPlayerTakeDamage" }
    end

    def matchDefinition
      @args.select { |data| data.type == "LogMatchDefinition" }
    end

    def matchStart
      @args.select { |data| data.type == "LogMatchStart" }
    end

    def gamestatePeriodic
      @args.select { |data| data.type == "LogGamestatePeriodic" }
    end

    def vehicleLeave
      @args.select { |data| data.type == "LogVehicleLeave" }
    end

    def playerLogout
      @args.select { |data| data.type == "LogPlayerLogout" }
    end

    def itemAttach
      @args.select { |data| data.type == "LogItemAttach" }
    end

    def itemDrop
      @args.select { |data| data.type == "LogItemDrop" }
    end

    def itemUse
      @args.select { |data| data.type == "LogItemUse" }
    end

    def carePackageSpawn
      @args.select { |data| data.type == "LogCarePackageSpawn" }
    end

    def vehicleDestroy
      @args.select { |data| data.type == "LogVehicleDestroy" }
    end

    def carePackageLand
      @args.select { |data| data.type == "LogCarePackageLand" }
    end

    def matchEnd
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
