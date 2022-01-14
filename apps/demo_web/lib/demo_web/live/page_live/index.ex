defmodule DemoWeb.PageLive.Index do
  use DemoWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket) do
      :timer.send_interval(3333, self(), :tick)
    end

    {:ok, socket}
  end
end
