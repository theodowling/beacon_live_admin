defmodule Beacon.LiveAdmin.Content do
  @moduledoc """
  Calls Beacon Content API through the cluster.

  The function call is made on the first available node for a site,
  which may be running in multiple nodes.
  """

  import Beacon.LiveAdmin.Cluster, only: [call: 4]

  def change_layout(site, layout, attrs \\ %{}) do
    call(site, Beacon.Content, :change_layout, [layout, attrs])
  end

  def create_layout(site, attrs) do
    call(site, Beacon.Content, :create_layout, [attrs])
  end

  def update_layout(site, layout, attrs) do
    call(site, Beacon.Content, :update_layout, [layout, attrs])
  end

  def publish_layout(site, id) do
    call(site, Beacon.Content, :publish_layout, [id])
  end

  def get_layout(site, id) do
    call(site, Beacon.Content, :get_layout, [id])
  end

  def list_layout_events(site, id) do
    call(site, Beacon.Content, :list_layout_events, [site, id])
  end

  def get_latest_layout_event(site, id) do
    call(site, Beacon.Content, :get_latest_layout_event, [site, id])
  end

  def list_layouts(site, opts \\ []) do
    opts =
      opts
      |> Keyword.put_new(:query, nil)
      |> Keyword.put_new(:per_page, 20)

    call(site, Beacon.Content, :list_layouts, [site, opts])
  end

  def change_page(site, page) do
    call(site, Beacon.Content, :change_page, [page])
  end

  def page_extra_fields(site, form, attrs, errors) do
    call(site, Beacon.Content.PageField, :extra_fields, [site, form, attrs, errors])
  end

  def page_field_name(site, mod) do
    call(site, mod, :name, [])
  end

  def render_page_field(site, mod, field, env) do
    call(site, Beacon.Content.PageField, :render_field, [mod, field, env])
  end

  def validate_page(site, page, attrs) do
    call(site, Beacon.Content, :validate_page, [site, page, attrs])
  end

  def create_page(site, attrs) do
    call(site, Beacon.Content, :create_page, [attrs])
  end

  def update_page(site, page, attrs) do
    call(site, Beacon.Content, :update_page, [page, attrs])
  end

  def publish_page(site, id) do
    call(site, Beacon.Content, :publish_page, [id])
  end

  def get_page(site, id) do
    call(site, Beacon.Content, :get_page, [id])
  end

  def get_page(site, id, opts) do
    call(site, Beacon.Content, :get_page, [id, opts])
  end

  def get_latest_page_event(site, id) do
    call(site, Beacon.Content, :get_latest_page_event, [site, id])
  end

  def list_page_events(site, id) do
    call(site, Beacon.Content, :list_page_events, [site, id])
  end

  def list_pages(site, opts \\ []) do
    opts =
      opts
      |> Keyword.put_new(:query, nil)
      |> Keyword.put_new(:per_page, 20)

    call(site, Beacon.Content, :list_pages, [site, opts])
  end

  def change_page_variant(site, variant, attrs \\ %{}) do
    call(site, Beacon.Content, :change_page_variant, [variant, attrs])
  end

  def create_variant_for_page(site, page, attrs) do
    call(site, Beacon.Content, :create_variant_for_page, [page, attrs])
  end

  def update_variant_for_page(site, page, variant, attrs) do
    call(site, Beacon.Content, :update_variant_for_page, [page, variant, attrs])
  end

  def delete_variant_from_page(site, page, variant) do
    call(site, Beacon.Content, :delete_variant_from_page, [page, variant])
  end

  def change_page_event_handler(site, event_handler, attrs \\ %{}) do
    call(site, Beacon.Content, :change_page_event_handler, [event_handler, attrs])
  end

  def create_event_handler_for_page(site, page, attrs) do
    call(site, Beacon.Content, :create_event_handler_for_page, [page, attrs])
  end

  def update_event_handler_for_page(site, page, event_handler, attrs) do
    call(site, Beacon.Content, :update_event_handler_for_page, [page, event_handler, attrs])
  end

  def delete_event_handler_from_page(site, page, event_handler) do
    call(site, Beacon.Content, :delete_event_handler_from_page, [page, event_handler])
  end

  def component_categories(site) do
    call(site, Beacon.Content, :component_categories, [])
  end

  def change_component(site, component, attrs \\ %{}) do
    call(site, Beacon.Content, :change_component, [component, attrs])
  end

  def list_components(site, opts \\ []) do
    opts =
      opts
      |> Keyword.put_new(:query, nil)
      |> Keyword.put_new(:per_page, 20)

    call(site, Beacon.Content, :list_components, [site, opts])
  end

  def get_component(site, id) do
    call(site, Beacon.Content, :get_component_by, [site, [id: id]])
  end

  def create_component(site, attrs) do
    call(site, Beacon.Content, :create_component, [attrs])
  end

  def update_component(site, component, attrs) do
    call(site, Beacon.Content, :update_component, [component, attrs])
  end
end
