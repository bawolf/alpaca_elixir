defmodule Alpaca.Account.Configuration do
  @moduledoc """
  A resource that allows us to query an Account Configuration from Alpaca
  """

  alias Alpaca.Client

  @doc """
  Retrieve your Alpaca trading account configuration info

  ## Example
    iex> {:ok, %{} = account_config} = Alpaca.Account.Configuration.get()

  Allows us to retrieve our own account configuration info as a result tuple {:ok, %{}}
  if successful. If not success we will get back a result tuple {:error, {status: http_status_code, body: http_response_body}}
  """
  @spec get() :: {:ok, map()} | {:error, map()}
  def get() do
    Client.get("/v1/account/configurations")
  end

  @doc """
  Edit your Alpaca trading account configuration info

  ## Example
    iex> {:ok, %{} = account_config} = Alpaca.Account.Configuration.edit(%{trade_confirm_email: "none"})

  Allows us to edit our own account configuration info and return the new configuration as a result tuple {:ok, %{}}
  if successful. If not success we will get back a result tuple {:error, {status: http_status_code, body: http_response_body}}
  """
  @spec edit() :: {:ok, map()} | {:error, map()}
  def edit(params \\ %{}) do
    Client.patch("/v1/account/configurations", params)
  end
end
