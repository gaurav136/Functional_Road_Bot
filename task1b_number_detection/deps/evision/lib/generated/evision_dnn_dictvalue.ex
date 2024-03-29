defmodule Evision.DNN.DictValue do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Evision.DNN.DictValue` struct.

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
  def __to_struct__({:ok, %{class: :"DNN.DictValue", ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  def __to_struct__(%{class: :"DNN.DictValue", ref: ref}) do
    %T{
      ref: ref
    }
  end

  def __to_struct__(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end

  @doc """
  #### Variant 1:
  

  ##### Positional Arguments
  - **s**: `String`

  ##### Return
  - **self**: `Evision.DNN.DictValue`


  Python prototype (for reference): 
  ```python3
  DictValue(s) -> <dnn_DictValue object>
  ```

  #### Variant 2:
  

  ##### Positional Arguments
  - **p**: `double`

  ##### Return
  - **self**: `Evision.DNN.DictValue`


  Python prototype (for reference): 
  ```python3
  DictValue(p) -> <dnn_DictValue object>
  ```

  #### Variant 3:
  

  ##### Positional Arguments
  - **i**: `int`

  ##### Return
  - **self**: `Evision.DNN.DictValue`


  Python prototype (for reference): 
  ```python3
  DictValue(i) -> <dnn_DictValue object>
  ```


  """
  @spec dictValue(binary()) :: Evision.DNN.DictValue.t() | {:error, String.t()}
  def dictValue(s) when is_binary(s)
  do
    positional = [
      s: Evision.Internal.Structurise.from_struct(s)
    ]
    :evision_nif.dnn_dnn_DictValue_DictValue(positional)
    |> __to_struct__()
  end
  @spec dictValue(number()) :: Evision.DNN.DictValue.t() | {:error, String.t()}
  def dictValue(p) when is_number(p)
  do
    positional = [
      p: Evision.Internal.Structurise.from_struct(p)
    ]
    :evision_nif.dnn_dnn_DictValue_DictValue(positional)
    |> __to_struct__()
  end
  @spec dictValue(integer()) :: Evision.DNN.DictValue.t() | {:error, String.t()}
  def dictValue(i) when is_integer(i)
  do
    positional = [
      i: Evision.Internal.Structurise.from_struct(i)
    ]
    :evision_nif.dnn_dnn_DictValue_DictValue(positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Keyword Arguments
  - **idx**: `int`.

  ##### Return
  - **retval**: `int`



  Python prototype (for reference): 
  ```python3
  getIntValue([, idx]) -> retval
  ```

  """
  @spec getIntValue(Evision.DNN.DictValue.t()) :: integer() | {:error, String.t()}
  def getIntValue(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_getIntValue(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Keyword Arguments
  - **idx**: `int`.

  ##### Return
  - **retval**: `double`



  Python prototype (for reference): 
  ```python3
  getRealValue([, idx]) -> retval
  ```

  """
  @spec getRealValue(Evision.DNN.DictValue.t()) :: number() | {:error, String.t()}
  def getRealValue(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_getRealValue(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Keyword Arguments
  - **idx**: `int`.

  ##### Return
  - **retval**: `String`



  Python prototype (for reference): 
  ```python3
  getStringValue([, idx]) -> retval
  ```

  """
  @spec getStringValue(Evision.DNN.DictValue.t()) :: binary() | {:error, String.t()}
  def getStringValue(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_getStringValue(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  isInt() -> retval
  ```

  """
  @spec isInt(Evision.DNN.DictValue.t()) :: boolean() | {:error, String.t()}
  def isInt(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_isInt(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  isReal() -> retval
  ```

  """
  @spec isReal(Evision.DNN.DictValue.t()) :: boolean() | {:error, String.t()}
  def isReal(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_isReal(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  isString() -> retval
  ```

  """
  @spec isString(Evision.DNN.DictValue.t()) :: boolean() | {:error, String.t()}
  def isString(self) do
    positional = [
    ]
    :evision_nif.dnn_dnn_DictValue_isString(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end
end
