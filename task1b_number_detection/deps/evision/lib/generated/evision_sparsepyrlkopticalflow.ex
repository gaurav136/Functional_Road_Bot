defmodule Evision.SparsePyrLKOpticalFlow do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Evision.SparsePyrLKOpticalFlow` struct.

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
  def __to_struct__({:ok, %{class: :SparsePyrLKOpticalFlow, ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  def __to_struct__(%{class: :SparsePyrLKOpticalFlow, ref: ref}) do
    %T{
      ref: ref
    }
  end

  def __to_struct__(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end

  @doc """
  
  ##### Keyword Arguments
  - **winSize**: `Size`.
  - **maxLevel**: `int`.
  - **crit**: `TermCriteria`.
  - **flags**: `int`.
  - **minEigThreshold**: `double`.

  ##### Return
  - **retval**: `Evision.SparsePyrLKOpticalFlow`



  Python prototype (for reference): 
  ```python3
  create([, winSize[, maxLevel[, crit[, flags[, minEigThreshold]]]]]) -> retval
  ```

  """
  @spec create([{atom(), term()},...] | nil) :: Evision.SparsePyrLKOpticalFlow.t() | {:error, String.t()}
  def create(opts) when opts == nil or (is_list(opts) and is_tuple(hd(opts)))
  do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_create_static(positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  
  ##### Keyword Arguments
  - **winSize**: `Size`.
  - **maxLevel**: `int`.
  - **crit**: `TermCriteria`.
  - **flags**: `int`.
  - **minEigThreshold**: `double`.

  ##### Return
  - **retval**: `Evision.SparsePyrLKOpticalFlow`



  Python prototype (for reference): 
  ```python3
  create([, winSize[, maxLevel[, crit[, flags[, minEigThreshold]]]]]) -> retval
  ```

  """
  @spec create() :: Evision.SparsePyrLKOpticalFlow.t() | {:error, String.t()}
  def create() do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_create_static(positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`


  Python prototype (for reference): 
  ```python3
  getFlags() -> retval
  ```

  """
  @spec getFlags(Evision.SparsePyrLKOpticalFlow.t()) :: integer() | {:error, String.t()}
  def getFlags(self) do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_getFlags(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`


  Python prototype (for reference): 
  ```python3
  getMaxLevel() -> retval
  ```

  """
  @spec getMaxLevel(Evision.SparsePyrLKOpticalFlow.t()) :: integer() | {:error, String.t()}
  def getMaxLevel(self) do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_getMaxLevel(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `double`


  Python prototype (for reference): 
  ```python3
  getMinEigThreshold() -> retval
  ```

  """
  @spec getMinEigThreshold(Evision.SparsePyrLKOpticalFlow.t()) :: number() | {:error, String.t()}
  def getMinEigThreshold(self) do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_getMinEigThreshold(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `TermCriteria`


  Python prototype (for reference): 
  ```python3
  getTermCriteria() -> retval
  ```

  """
  @spec getTermCriteria(Evision.SparsePyrLKOpticalFlow.t()) :: {integer(), integer(), number()} | {:error, String.t()}
  def getTermCriteria(self) do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_getTermCriteria(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `Size`


  Python prototype (for reference): 
  ```python3
  getWinSize() -> retval
  ```

  """
  @spec getWinSize(Evision.SparsePyrLKOpticalFlow.t()) :: {number(), number()} | {:error, String.t()}
  def getWinSize(self) do
    positional = [
    ]
    :evision_nif.sparsePyrLKOpticalFlow_getWinSize(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **flags**: `int`



  Python prototype (for reference): 
  ```python3
  setFlags(flags) -> None
  ```

  """
  @spec setFlags(Evision.SparsePyrLKOpticalFlow.t(), integer()) :: :ok | {:error, String.t()}
  def setFlags(self, flags) when is_integer(flags)
  do
    positional = [
      flags: Evision.Internal.Structurise.from_struct(flags)
    ]
    :evision_nif.sparsePyrLKOpticalFlow_setFlags(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **maxLevel**: `int`



  Python prototype (for reference): 
  ```python3
  setMaxLevel(maxLevel) -> None
  ```

  """
  @spec setMaxLevel(Evision.SparsePyrLKOpticalFlow.t(), integer()) :: :ok | {:error, String.t()}
  def setMaxLevel(self, maxLevel) when is_integer(maxLevel)
  do
    positional = [
      maxLevel: Evision.Internal.Structurise.from_struct(maxLevel)
    ]
    :evision_nif.sparsePyrLKOpticalFlow_setMaxLevel(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **minEigThreshold**: `double`



  Python prototype (for reference): 
  ```python3
  setMinEigThreshold(minEigThreshold) -> None
  ```

  """
  @spec setMinEigThreshold(Evision.SparsePyrLKOpticalFlow.t(), number()) :: :ok | {:error, String.t()}
  def setMinEigThreshold(self, minEigThreshold) when is_number(minEigThreshold)
  do
    positional = [
      minEigThreshold: Evision.Internal.Structurise.from_struct(minEigThreshold)
    ]
    :evision_nif.sparsePyrLKOpticalFlow_setMinEigThreshold(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **crit**: `TermCriteria`



  Python prototype (for reference): 
  ```python3
  setTermCriteria(crit) -> None
  ```

  """
  @spec setTermCriteria(Evision.SparsePyrLKOpticalFlow.t(), {integer(), integer(), number()}) :: :ok | {:error, String.t()}
  def setTermCriteria(self, crit) when is_tuple(crit)
  do
    positional = [
      crit: Evision.Internal.Structurise.from_struct(crit)
    ]
    :evision_nif.sparsePyrLKOpticalFlow_setTermCriteria(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **winSize**: `Size`



  Python prototype (for reference): 
  ```python3
  setWinSize(winSize) -> None
  ```

  """
  @spec setWinSize(Evision.SparsePyrLKOpticalFlow.t(), {number(), number()}) :: :ok | {:error, String.t()}
  def setWinSize(self, winSize) when is_tuple(winSize)
  do
    positional = [
      winSize: Evision.Internal.Structurise.from_struct(winSize)
    ]
    :evision_nif.sparsePyrLKOpticalFlow_setWinSize(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end
end