defmodule Evision.TrackerDaSiamRPN.Params do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Evision.TrackerDaSiamRPN.Params` struct.

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
  def __to_struct__({:ok, %{class: :"TrackerDaSiamRPN.Params", ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  def __to_struct__(%{class: :"TrackerDaSiamRPN.Params", ref: ref}) do
    %T{
      ref: ref
    }
  end

  def __to_struct__(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end

  @doc """
  
  ##### Return
  - **self**: `Evision.TrackerDaSiamRPN.Params`


  Python prototype (for reference): 
  ```python3
  TrackerDaSiamRPN_Params() -> <TrackerDaSiamRPN_Params object>
  ```

  """
  @spec params() :: Evision.TrackerDaSiamRPN.Params.t() | {:error, String.t()}
  def params() do
    positional = [
    ]
    :evision_nif.trackerDaSiamRPN_Params_TrackerDaSiamRPN_Params(positional)
    |> __to_struct__()
  end
  @spec get_backend(Evision.TrackerDaSiamRPN.Params.t()) :: integer()
  def get_backend(self) do
    :evision_nif.trackerDaSiamRPN_Params_get_backend(Evision.Internal.Structurise.from_struct(self))
    |> __to_struct__()
  end
  @spec set_backend(Evision.TrackerDaSiamRPN.Params.t(), integer()) :: Evision.TrackerDaSiamRPN.Params.t()
  def set_backend(self, prop) do
    :evision_nif.trackerDaSiamRPN_Params_set_backend(Evision.Internal.Structurise.from_struct(self), [backend: Evision.Internal.Structurise.from_struct(prop)])
    |> __to_struct__()
  end
  @spec get_kernel_cls1(Evision.TrackerDaSiamRPN.Params.t()) :: binary()
  def get_kernel_cls1(self) do
    :evision_nif.trackerDaSiamRPN_Params_get_kernel_cls1(Evision.Internal.Structurise.from_struct(self))
    |> __to_struct__()
  end
  @spec set_kernel_cls1(Evision.TrackerDaSiamRPN.Params.t(), binary()) :: Evision.TrackerDaSiamRPN.Params.t()
  def set_kernel_cls1(self, prop) do
    :evision_nif.trackerDaSiamRPN_Params_set_kernel_cls1(Evision.Internal.Structurise.from_struct(self), [kernel_cls1: Evision.Internal.Structurise.from_struct(prop)])
    |> __to_struct__()
  end
  @spec get_kernel_r1(Evision.TrackerDaSiamRPN.Params.t()) :: binary()
  def get_kernel_r1(self) do
    :evision_nif.trackerDaSiamRPN_Params_get_kernel_r1(Evision.Internal.Structurise.from_struct(self))
    |> __to_struct__()
  end
  @spec set_kernel_r1(Evision.TrackerDaSiamRPN.Params.t(), binary()) :: Evision.TrackerDaSiamRPN.Params.t()
  def set_kernel_r1(self, prop) do
    :evision_nif.trackerDaSiamRPN_Params_set_kernel_r1(Evision.Internal.Structurise.from_struct(self), [kernel_r1: Evision.Internal.Structurise.from_struct(prop)])
    |> __to_struct__()
  end
  @spec get_model(Evision.TrackerDaSiamRPN.Params.t()) :: binary()
  def get_model(self) do
    :evision_nif.trackerDaSiamRPN_Params_get_model(Evision.Internal.Structurise.from_struct(self))
    |> __to_struct__()
  end
  @spec set_model(Evision.TrackerDaSiamRPN.Params.t(), binary()) :: Evision.TrackerDaSiamRPN.Params.t()
  def set_model(self, prop) do
    :evision_nif.trackerDaSiamRPN_Params_set_model(Evision.Internal.Structurise.from_struct(self), [model: Evision.Internal.Structurise.from_struct(prop)])
    |> __to_struct__()
  end
  @spec get_target(Evision.TrackerDaSiamRPN.Params.t()) :: integer()
  def get_target(self) do
    :evision_nif.trackerDaSiamRPN_Params_get_target(Evision.Internal.Structurise.from_struct(self))
    |> __to_struct__()
  end
  @spec set_target(Evision.TrackerDaSiamRPN.Params.t(), integer()) :: Evision.TrackerDaSiamRPN.Params.t()
  def set_target(self, prop) do
    :evision_nif.trackerDaSiamRPN_Params_set_target(Evision.Internal.Structurise.from_struct(self), [target: Evision.Internal.Structurise.from_struct(prop)])
    |> __to_struct__()
  end
end