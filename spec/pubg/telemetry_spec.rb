require "spec_helper"
RSpec.describe PUBG::Seasons do
  let(:telemetry) { @pubg.telemetry('https://telemetry-cdn.playbattlegrounds.com/pc-krjp/2018/01/01/0/0/1ad97f85-cf9b-11e7-b84e-0a586460f004-telemetry.json') }

  describe "has data" do
    it "player_login" do
      expect(telemetry.player_login.size).to eq(1)
      expect(telemetry.player_login.first.type).to eq("LogPlayerLogin")
      expect(telemetry.player_login.first).to be_kind_of(PUBG::Telemetry::LogPlayerLogin)
    end

    it "player_create" do
      expect(telemetry.player_create.size).to eq(1)
      expect(telemetry.player_create.first.type).to eq("LogPlayerCreate")
      expect(telemetry.player_create.first).to be_kind_of(PUBG::Telemetry::LogPlayerCreate)
    end

    it "player_position" do
      expect(telemetry.player_position.size).to eq(1)
      expect(telemetry.player_position.first.type).to eq("LogPlayerPosition")
      expect(telemetry.player_position.first).to be_kind_of(PUBG::Telemetry::LogPlayerPosition)
    end

    it "player_attack" do
      expect(telemetry.player_attack.size).to eq(1)
      expect(telemetry.player_attack.first.type).to eq("LogPlayerAttack")
      expect(telemetry.player_attack.first).to be_kind_of(PUBG::Telemetry::LogPlayerAttack)
    end

    it "item_pickup" do
      expect(telemetry.item_pickup.size).to eq(1)
      expect(telemetry.item_pickup.first.type).to eq("LogItemPickup")
      expect(telemetry.item_pickup.first).to be_kind_of(PUBG::Telemetry::LogItemPickup)
    end

    it "item_equip" do
      expect(telemetry.item_equip.size).to eq(1)
      expect(telemetry.item_equip.first.type).to eq("LogItemEquip")
      expect(telemetry.item_equip.first).to be_kind_of(PUBG::Telemetry::LogItemEquip)
    end

    it "item_unequip" do
      expect(telemetry.item_unequip.size).to eq(1)
      expect(telemetry.item_unequip.first.type).to eq("LogItemUnequip")
      expect(telemetry.item_unequip.first).to be_kind_of(PUBG::Telemetry::LogItemUnequip)
    end

    it "vehicle_ride" do
      expect(telemetry.vehicle_ride.size).to eq(1)
      expect(telemetry.vehicle_ride.first.type).to eq("LogVehicleRide")
      expect(telemetry.vehicle_ride.first).to be_kind_of(PUBG::Telemetry::LogVehicleRide)
    end

    it "player_kill" do
      expect(telemetry.player_kill.size).to eq(1)
      expect(telemetry.player_kill.first.type).to eq("LogPlayerKill")
      expect(telemetry.player_kill.first).to be_kind_of(PUBG::Telemetry::LogPlayerKill)
    end

    it "player_take_damage" do
      expect(telemetry.player_take_damage.size).to eq(1)
      expect(telemetry.player_take_damage.first.type).to eq("LogPlayerTakeDamage")
      expect(telemetry.player_take_damage.first).to be_kind_of(PUBG::Telemetry::LogPlayerTakeDamage)
    end

    it "match_definition" do
      expect(telemetry.match_definition.size).to eq(1)
      expect(telemetry.match_definition.first.type).to eq("LogMatchDefinition")
      expect(telemetry.match_definition.first).to be_kind_of(PUBG::Telemetry::LogMatchDefinition)
    end

    it "match_start" do
      expect(telemetry.match_start.size).to eq(1)
      expect(telemetry.match_start.first.type).to eq("LogMatchStart")
      expect(telemetry.match_start.first).to be_kind_of(PUBG::Telemetry::LogMatchStart)
    end

    it "game_state_periodic" do
      expect(telemetry.game_state_periodic.size).to eq(1)
      expect(telemetry.game_state_periodic.first.type).to eq("LogGameStatePeriodic")
      expect(telemetry.game_state_periodic.first).to be_kind_of(PUBG::Telemetry::LogGameStatePeriodic)
    end

    it "vehicle_leave" do
      expect(telemetry.vehicle_leave.size).to eq(1)
      expect(telemetry.vehicle_leave.first.type).to eq("LogVehicleLeave")
      expect(telemetry.vehicle_leave.first).to be_kind_of(PUBG::Telemetry::LogVehicleLeave)
    end

    it "player_logout" do
      expect(telemetry.player_logout.size).to eq(1)
      expect(telemetry.player_logout.first.type).to eq("LogPlayerLogout")
      expect(telemetry.player_logout.first).to be_kind_of(PUBG::Telemetry::LogPlayerLogout)
    end

    it "item_attach" do
      expect(telemetry.item_attach.size).to eq(1)
      expect(telemetry.item_attach.first.type).to eq("LogItemAttach")
      expect(telemetry.item_attach.first).to be_kind_of(PUBG::Telemetry::LogItemAttach)
    end

    it "item_detach" do
      expect(telemetry.item_detach.size).to eq(1)
      expect(telemetry.item_detach.first.type).to eq("LogItemDetach")
      expect(telemetry.item_detach.first).to be_kind_of(PUBG::Telemetry::LogItemDetach)
    end

    it "item_drop" do
      expect(telemetry.item_drop.size).to eq(1)
      expect(telemetry.item_drop.first.type).to eq("LogItemDrop")
      expect(telemetry.item_drop.first).to be_kind_of(PUBG::Telemetry::LogItemDrop)
    end

    it "item_use" do
      expect(telemetry.item_use.size).to eq(1)
      expect(telemetry.item_use.first.type).to eq("LogItemUse")
      expect(telemetry.item_use.first).to be_kind_of(PUBG::Telemetry::LogItemUse)
    end

    it "care_package_spawn" do
      expect(telemetry.care_package_spawn.size).to eq(1)
      expect(telemetry.care_package_spawn.first.type).to eq("LogCarePackageSpawn")
      expect(telemetry.care_package_spawn.first).to be_kind_of(PUBG::Telemetry::LogCarePackageSpawn)
    end

    it "vehicle_destroy" do
      expect(telemetry.vehicle_destroy.size).to eq(1)
      expect(telemetry.vehicle_destroy.first.type).to eq("LogVehicleDestroy")
      expect(telemetry.vehicle_destroy.first).to be_kind_of(PUBG::Telemetry::LogVehicleDestroy)
    end

    it "care_package_land" do
      expect(telemetry.care_package_land.size).to eq(1)
      expect(telemetry.care_package_land.first.type).to eq("LogCarePackageLand")
      expect(telemetry.care_package_land.first).to be_kind_of(PUBG::Telemetry::LogCarePackageLand)
    end

    it "match_end" do
      expect(telemetry.match_end.size).to eq(1)
      expect(telemetry.match_end.first.type).to eq("LogMatchEnd")
      expect(telemetry.match_end.first).to be_kind_of(PUBG::Telemetry::LogMatchEnd)
    end    
  end
end
