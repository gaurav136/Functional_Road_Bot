defmodule Evision.UtilsFS do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Evision.UtilsFS` struct.

  - **ref**. `reference()`

    The underlying erlang resource variable.

  """
  @type t :: %__MODULE__{
    ref: reference()
  }
  @enforce_keys [:ref]
  defstruct [:ref]
  alias __MODULE__, as: T

  @doc false
  def __to_struct__({:ok, %{class: :UtilsFS, ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  def __to_struct__(%{class: :UtilsFS, ref: ref}) do
    %T{
      ref: ref
    }
  end

  def __to_struct__(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end

  @doc """
  
  ##### Return
  - **retval**: `String`


  Python prototype (for reference): 
  ```python3
  getCacheDirectoryForDownloads() -> retval
  ```

  """
  @spec getCacheDirectoryForDownloads() :: binary() | {:error, String.t()}
  def getCacheDirectoryForDownloads() do
    positional = [
    ]
    :evision_nif.utils_fs_getCacheDirectoryForDownloads(positional)
    |> __to_struct__()
  end
end