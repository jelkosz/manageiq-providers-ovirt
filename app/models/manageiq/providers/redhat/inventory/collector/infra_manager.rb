class ManageIQ::Providers::Redhat::Inventory::Collector::InfraManager < ManageIQ::Providers::Redhat::Inventory::Collector
  def ems_clusters
    collect_ems_clusters
  end

  def networks
    collect_networks
  end

  def storagedomains
    collect_storagedomains
  end

  def datacenters
    collect_datacenters
  end

  def hosts
    manager.with_provider_connection(VERSION_HASH) do |connection|
      connection.system_service.hosts_service.list
    end
  end

  def vms
    manager.with_provider_connection(VERSION_HASH) do |connection|
      connection.system_service.vms_service.list
    end
  end

  def templates
    manager.with_provider_connection(VERSION_HASH) do |connection|
      connection.system_service.templates_service.list
    end
  end
end
