defmodule Evision.ML.DTrees do
  import Kernel, except: [apply: 2, apply: 3]

  @typedoc """
  Type that represents an `Evision.ML.DTrees` struct.

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
  def __to_struct__({:ok, %{class: :"ML.DTrees", ref: ref}}) do
    {:ok, %T{ref: ref}}
  end

  def __to_struct__(%{class: :"ML.DTrees", ref: ref}) do
    %T{
      ref: ref
    }
  end

  def __to_struct__(ret) do
    Evision.Internal.Structurise.to_struct(ret)
  end

  @doc """
  Computes error on the training or test dataset

  ##### Positional Arguments
  - **data**: `Evision.ML.TrainData`.

    the training data

  - **test**: `bool`.

    if true, the error is computed over the test subset of the data, otherwise it's
    computed over the training subset of the data. Please note that if you loaded a completely
    different dataset to evaluate already trained classifier, you will probably want not to set
    the test subset at all with TrainData::setTrainTestSplitRatio and specify test=false, so
    that the error is computed for the whole new set. Yes, this sounds a bit confusing.


  ##### Return
  - **retval**: `float`
  - **resp**: `Evision.Mat`.

    the optional output responses.



  The method uses StatModel::predict to compute the error. For regression models the error is
  computed as RMS, for classifiers - as a percent of missclassified samples (0%-100%).


  Python prototype (for reference): 
  ```python3
  calcError(data, test[, resp]) -> retval, resp
  ```

  """
  @spec calcError(Evision.ML.DTrees.t(), Evision.ML.TrainData.t(), boolean(), [{atom(), term()},...] | nil) :: {number(), Evision.Mat.t()} | {:error, String.t()}
  def calcError(self, data, test, opts) when is_struct(data, Evision.ML.TrainData) and is_boolean(test) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      data: Evision.Internal.Structurise.from_struct(data),
      test: Evision.Internal.Structurise.from_struct(test)
    ]
    :evision_nif.ml_ml_DTrees_calcError(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  Computes error on the training or test dataset

  ##### Positional Arguments
  - **data**: `Evision.ML.TrainData`.

    the training data

  - **test**: `bool`.

    if true, the error is computed over the test subset of the data, otherwise it's
    computed over the training subset of the data. Please note that if you loaded a completely
    different dataset to evaluate already trained classifier, you will probably want not to set
    the test subset at all with TrainData::setTrainTestSplitRatio and specify test=false, so
    that the error is computed for the whole new set. Yes, this sounds a bit confusing.


  ##### Return
  - **retval**: `float`
  - **resp**: `Evision.Mat`.

    the optional output responses.



  The method uses StatModel::predict to compute the error. For regression models the error is
  computed as RMS, for classifiers - as a percent of missclassified samples (0%-100%).


  Python prototype (for reference): 
  ```python3
  calcError(data, test[, resp]) -> retval, resp
  ```

  """
  @spec calcError(Evision.ML.DTrees.t(), Evision.ML.TrainData.t(), boolean()) :: {number(), Evision.Mat.t()} | {:error, String.t()}
  def calcError(self, data, test) when is_struct(data, Evision.ML.TrainData) and is_boolean(test)
  do
    positional = [
      data: Evision.Internal.Structurise.from_struct(data),
      test: Evision.Internal.Structurise.from_struct(test)
    ]
    :evision_nif.ml_ml_DTrees_calcError(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Clears the algorithm state


  Python prototype (for reference): 
  ```python3
  clear() -> None
  ```

  """
  @spec clear(Evision.ML.DTrees.t()) :: :ok | {:error, String.t()}
  def clear(self) do
    positional = [
    ]
    :evision_nif.ml_DTrees_clear(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Creates the empty model
  ##### Return
  - **retval**: `Evision.ML.DTrees`

  The static method creates empty decision tree with the specified parameters. It should be then
  trained using train method (see StatModel::train). Alternatively, you can load the model from
  file using Algorithm::load\\<DTrees\\>(filename).

  Python prototype (for reference): 
  ```python3
  create() -> retval
  ```

  """
  @spec create() :: Evision.ML.DTrees.t() | {:error, String.t()}
  def create() do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_create_static(positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  empty() -> retval
  ```

  """
  @spec empty(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def empty(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_empty(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`

  @see `setCVFolds/2`

  Python prototype (for reference): 
  ```python3
  getCVFolds() -> retval
  ```

  """
  @spec getCVFolds(Evision.ML.DTrees.t()) :: integer() | {:error, String.t()}
  def getCVFolds(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getCVFolds(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `String`

  Returns the algorithm string identifier.
  This string is used as top level xml/yml node tag when the object is saved to a file or string.

  Python prototype (for reference): 
  ```python3
  getDefaultName() -> retval
  ```

  """
  @spec getDefaultName(Evision.ML.DTrees.t()) :: binary() | {:error, String.t()}
  def getDefaultName(self) do
    positional = [
    ]
    :evision_nif.ml_DTrees_getDefaultName(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`

  @see `setMaxCategories/2`

  Python prototype (for reference): 
  ```python3
  getMaxCategories() -> retval
  ```

  """
  @spec getMaxCategories(Evision.ML.DTrees.t()) :: integer() | {:error, String.t()}
  def getMaxCategories(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getMaxCategories(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`

  @see `setMaxDepth/2`

  Python prototype (for reference): 
  ```python3
  getMaxDepth() -> retval
  ```

  """
  @spec getMaxDepth(Evision.ML.DTrees.t()) :: integer() | {:error, String.t()}
  def getMaxDepth(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getMaxDepth(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `int`

  @see `setMinSampleCount/2`

  Python prototype (for reference): 
  ```python3
  getMinSampleCount() -> retval
  ```

  """
  @spec getMinSampleCount(Evision.ML.DTrees.t()) :: integer() | {:error, String.t()}
  def getMinSampleCount(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getMinSampleCount(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `cv::Mat`

  @see `setPriors/2`

  Python prototype (for reference): 
  ```python3
  getPriors() -> retval
  ```

  """
  @spec getPriors(Evision.ML.DTrees.t()) :: Evision.Mat.t() | {:error, String.t()}
  def getPriors(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getPriors(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `float`

  @see `setRegressionAccuracy/2`

  Python prototype (for reference): 
  ```python3
  getRegressionAccuracy() -> retval
  ```

  """
  @spec getRegressionAccuracy(Evision.ML.DTrees.t()) :: number() | {:error, String.t()}
  def getRegressionAccuracy(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getRegressionAccuracy(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`

  @see `setTruncatePrunedTree/2`

  Python prototype (for reference): 
  ```python3
  getTruncatePrunedTree() -> retval
  ```

  """
  @spec getTruncatePrunedTree(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def getTruncatePrunedTree(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getTruncatePrunedTree(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`

  @see `setUse1SERule/2`

  Python prototype (for reference): 
  ```python3
  getUse1SERule() -> retval
  ```

  """
  @spec getUse1SERule(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def getUse1SERule(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getUse1SERule(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  
  ##### Return
  - **retval**: `bool`

  @see `setUseSurrogates/2`

  Python prototype (for reference): 
  ```python3
  getUseSurrogates() -> retval
  ```

  """
  @spec getUseSurrogates(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def getUseSurrogates(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getUseSurrogates(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Returns the number of variables in training samples
  ##### Return
  - **retval**: `int`


  Python prototype (for reference): 
  ```python3
  getVarCount() -> retval
  ```

  """
  @spec getVarCount(Evision.ML.DTrees.t()) :: integer() | {:error, String.t()}
  def getVarCount(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_getVarCount(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Returns true if the model is classifier
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  isClassifier() -> retval
  ```

  """
  @spec isClassifier(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def isClassifier(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_isClassifier(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Returns true if the model is trained
  ##### Return
  - **retval**: `bool`


  Python prototype (for reference): 
  ```python3
  isTrained() -> retval
  ```

  """
  @spec isTrained(Evision.ML.DTrees.t()) :: boolean() | {:error, String.t()}
  def isTrained(self) do
    positional = [
    ]
    :evision_nif.ml_ml_DTrees_isTrained(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Loads and creates a serialized DTrees from a file

  ##### Positional Arguments
  - **filepath**: `String`.

    path to serialized DTree


  ##### Keyword Arguments
  - **nodeName**: `String`.

    name of node containing the classifier


  ##### Return
  - **retval**: `Evision.ML.DTrees`

   Use DTree::save to serialize and store an DTree to disk.
   Load the DTree from this file again, by calling this function with the path to the file.
   Optionally specify the node for the file containing the classifier


  Python prototype (for reference): 
  ```python3
  load(filepath[, nodeName]) -> retval
  ```

  """
  @spec load(binary(), [{atom(), term()},...] | nil) :: Evision.ML.DTrees.t() | {:error, String.t()}
  def load(filepath, opts) when is_binary(filepath) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      filepath: Evision.Internal.Structurise.from_struct(filepath)
    ]
    :evision_nif.ml_ml_DTrees_load_static(positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  Loads and creates a serialized DTrees from a file

  ##### Positional Arguments
  - **filepath**: `String`.

    path to serialized DTree


  ##### Keyword Arguments
  - **nodeName**: `String`.

    name of node containing the classifier


  ##### Return
  - **retval**: `Evision.ML.DTrees`

   Use DTree::save to serialize and store an DTree to disk.
   Load the DTree from this file again, by calling this function with the path to the file.
   Optionally specify the node for the file containing the classifier


  Python prototype (for reference): 
  ```python3
  load(filepath[, nodeName]) -> retval
  ```

  """
  @spec load(binary()) :: Evision.ML.DTrees.t() | {:error, String.t()}
  def load(filepath) when is_binary(filepath)
  do
    positional = [
      filepath: Evision.Internal.Structurise.from_struct(filepath)
    ]
    :evision_nif.ml_ml_DTrees_load_static(positional)
    |> __to_struct__()
  end

  @doc """
  Predicts response(s) for the provided sample(s)

  ##### Positional Arguments
  - **samples**: `Evision.Mat`.

    The input samples, floating-point matrix


  ##### Keyword Arguments
  - **flags**: `int`.

    The optional flags, model-dependent. See cv::ml::StatModel::Flags.


  ##### Return
  - **retval**: `float`
  - **results**: `Evision.Mat`.

    The optional output matrix of results.




  Python prototype (for reference): 
  ```python3
  predict(samples[, results[, flags]]) -> retval, results
  ```

  """
  @spec predict(Evision.ML.DTrees.t(), Evision.Mat.maybe_mat_in(), [{atom(), term()},...] | nil) :: {number(), Evision.Mat.t()} | {:error, String.t()}
  def predict(self, samples, opts) when (is_struct(samples, Evision.Mat) or is_struct(samples, Nx.Tensor)) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      samples: Evision.Internal.Structurise.from_struct(samples)
    ]
    :evision_nif.ml_ml_DTrees_predict(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  Predicts response(s) for the provided sample(s)

  ##### Positional Arguments
  - **samples**: `Evision.Mat`.

    The input samples, floating-point matrix


  ##### Keyword Arguments
  - **flags**: `int`.

    The optional flags, model-dependent. See cv::ml::StatModel::Flags.


  ##### Return
  - **retval**: `float`
  - **results**: `Evision.Mat`.

    The optional output matrix of results.




  Python prototype (for reference): 
  ```python3
  predict(samples[, results[, flags]]) -> retval, results
  ```

  """
  @spec predict(Evision.ML.DTrees.t(), Evision.Mat.maybe_mat_in()) :: {number(), Evision.Mat.t()} | {:error, String.t()}
  def predict(self, samples) when (is_struct(samples, Evision.Mat) or is_struct(samples, Nx.Tensor))
  do
    positional = [
      samples: Evision.Internal.Structurise.from_struct(samples)
    ]
    :evision_nif.ml_ml_DTrees_predict(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Reads algorithm parameters from a file storage

  ##### Positional Arguments
  - **fn_**: `Evision.FileNode`



  Python prototype (for reference): 
  ```python3
  read(fn_) -> None
  ```

  """
  @spec read(Evision.ML.DTrees.t(), Evision.FileNode.t()) :: :ok | {:error, String.t()}
  def read(self, fn_) when is_struct(fn_, Evision.FileNode)
  do
    positional = [
      fn_: Evision.Internal.Structurise.from_struct(fn_)
    ]
    :evision_nif.ml_DTrees_read(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **filename**: `String`


  Saves the algorithm to a file.
  In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).

  Python prototype (for reference): 
  ```python3
  save(filename) -> None
  ```

  """
  @spec save(Evision.ML.DTrees.t(), binary()) :: :ok | {:error, String.t()}
  def save(self, filename) when is_binary(filename)
  do
    positional = [
      filename: Evision.Internal.Structurise.from_struct(filename)
    ]
    :evision_nif.ml_DTrees_save(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `int`


  @see `getCVFolds/1`

  Python prototype (for reference): 
  ```python3
  setCVFolds(val) -> None
  ```

  """
  @spec setCVFolds(Evision.ML.DTrees.t(), integer()) :: :ok | {:error, String.t()}
  def setCVFolds(self, val) when is_integer(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setCVFolds(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `int`


  @see `getMaxCategories/1`

  Python prototype (for reference): 
  ```python3
  setMaxCategories(val) -> None
  ```

  """
  @spec setMaxCategories(Evision.ML.DTrees.t(), integer()) :: :ok | {:error, String.t()}
  def setMaxCategories(self, val) when is_integer(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setMaxCategories(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `int`


  @see `getMaxDepth/1`

  Python prototype (for reference): 
  ```python3
  setMaxDepth(val) -> None
  ```

  """
  @spec setMaxDepth(Evision.ML.DTrees.t(), integer()) :: :ok | {:error, String.t()}
  def setMaxDepth(self, val) when is_integer(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setMaxDepth(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `int`


  @see `getMinSampleCount/1`

  Python prototype (for reference): 
  ```python3
  setMinSampleCount(val) -> None
  ```

  """
  @spec setMinSampleCount(Evision.ML.DTrees.t(), integer()) :: :ok | {:error, String.t()}
  def setMinSampleCount(self, val) when is_integer(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setMinSampleCount(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `Evision.Mat`


  @see `getPriors/1`

  Python prototype (for reference): 
  ```python3
  setPriors(val) -> None
  ```

  """
  @spec setPriors(Evision.ML.DTrees.t(), Evision.Mat.maybe_mat_in()) :: :ok | {:error, String.t()}
  def setPriors(self, val) when (is_struct(val, Evision.Mat) or is_struct(val, Nx.Tensor))
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setPriors(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `float`


  @see `getRegressionAccuracy/1`

  Python prototype (for reference): 
  ```python3
  setRegressionAccuracy(val) -> None
  ```

  """
  @spec setRegressionAccuracy(Evision.ML.DTrees.t(), number()) :: :ok | {:error, String.t()}
  def setRegressionAccuracy(self, val) when is_float(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setRegressionAccuracy(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `bool`


  @see `getTruncatePrunedTree/1`

  Python prototype (for reference): 
  ```python3
  setTruncatePrunedTree(val) -> None
  ```

  """
  @spec setTruncatePrunedTree(Evision.ML.DTrees.t(), boolean()) :: :ok | {:error, String.t()}
  def setTruncatePrunedTree(self, val) when is_boolean(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setTruncatePrunedTree(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `bool`


  @see `getUse1SERule/1`

  Python prototype (for reference): 
  ```python3
  setUse1SERule(val) -> None
  ```

  """
  @spec setUse1SERule(Evision.ML.DTrees.t(), boolean()) :: :ok | {:error, String.t()}
  def setUse1SERule(self, val) when is_boolean(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setUse1SERule(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  

  ##### Positional Arguments
  - **val**: `bool`


  @see `getUseSurrogates/1`

  Python prototype (for reference): 
  ```python3
  setUseSurrogates(val) -> None
  ```

  """
  @spec setUseSurrogates(Evision.ML.DTrees.t(), boolean()) :: :ok | {:error, String.t()}
  def setUseSurrogates(self, val) when is_boolean(val)
  do
    positional = [
      val: Evision.Internal.Structurise.from_struct(val)
    ]
    :evision_nif.ml_ml_DTrees_setUseSurrogates(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Trains the statistical model

  ##### Positional Arguments
  - **samples**: `Evision.Mat`.

    training samples

  - **layout**: `int`.

    See ml::SampleTypes.

  - **responses**: `Evision.Mat`.

    vector of responses associated with the training samples.


  ##### Return
  - **retval**: `bool`



  Python prototype (for reference): 
  ```python3
  train(samples, layout, responses) -> retval
  ```

  """
  @spec train(Evision.ML.DTrees.t(), Evision.Mat.maybe_mat_in(), integer(), Evision.Mat.maybe_mat_in()) :: boolean() | {:error, String.t()}
  def train(self, samples, layout, responses) when (is_struct(samples, Evision.Mat) or is_struct(samples, Nx.Tensor)) and is_integer(layout) and (is_struct(responses, Evision.Mat) or is_struct(responses, Nx.Tensor))
  do
    positional = [
      samples: Evision.Internal.Structurise.from_struct(samples),
      layout: Evision.Internal.Structurise.from_struct(layout),
      responses: Evision.Internal.Structurise.from_struct(responses)
    ]
    :evision_nif.ml_ml_DTrees_train(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  Trains the statistical model

  ##### Positional Arguments
  - **trainData**: `Evision.ML.TrainData`.

    training data that can be loaded from file using TrainData::loadFromCSV or
    created with TrainData::create.


  ##### Keyword Arguments
  - **flags**: `int`.

    optional flags, depending on the model. Some of the models can be updated with the
    new training samples, not completely overwritten (such as NormalBayesClassifier or ANN_MLP).


  ##### Return
  - **retval**: `bool`



  Python prototype (for reference): 
  ```python3
  train(trainData[, flags]) -> retval
  ```

  """
  @spec train(Evision.ML.DTrees.t(), Evision.ML.TrainData.t(), [{atom(), term()},...] | nil) :: boolean() | {:error, String.t()}
  def train(self, trainData, opts) when is_struct(trainData, Evision.ML.TrainData) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      trainData: Evision.Internal.Structurise.from_struct(trainData)
    ]
    :evision_nif.ml_ml_DTrees_train(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  Trains the statistical model

  ##### Positional Arguments
  - **trainData**: `Evision.ML.TrainData`.

    training data that can be loaded from file using TrainData::loadFromCSV or
    created with TrainData::create.


  ##### Keyword Arguments
  - **flags**: `int`.

    optional flags, depending on the model. Some of the models can be updated with the
    new training samples, not completely overwritten (such as NormalBayesClassifier or ANN_MLP).


  ##### Return
  - **retval**: `bool`



  Python prototype (for reference): 
  ```python3
  train(trainData[, flags]) -> retval
  ```

  """
  @spec train(Evision.ML.DTrees.t(), Evision.ML.TrainData.t()) :: boolean() | {:error, String.t()}
  def train(self, trainData) when is_struct(trainData, Evision.ML.TrainData)
  do
    positional = [
      trainData: Evision.Internal.Structurise.from_struct(trainData)
    ]
    :evision_nif.ml_ml_DTrees_train(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end

  @doc """
  simplified API for language bindings

  ##### Positional Arguments
  - **fs**: `Evision.FileStorage`

  ##### Keyword Arguments
  - **name**: `String`.


  Has overloading in C++



  Python prototype (for reference): 
  ```python3
  write(fs[, name]) -> None
  ```

  """
  @spec write(Evision.ML.DTrees.t(), Evision.FileStorage.t(), [{atom(), term()},...] | nil) :: :ok | {:error, String.t()}
  def write(self, fs, opts) when is_struct(fs, Evision.FileStorage) and (opts == nil or (is_list(opts) and is_tuple(hd(opts))))
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs)
    ]
    :evision_nif.ml_DTrees_write(Evision.Internal.Structurise.from_struct(self), positional ++ Evision.Internal.Structurise.from_struct(opts || []))
     |> __to_struct__()
  end

  @doc """
  simplified API for language bindings

  ##### Positional Arguments
  - **fs**: `Evision.FileStorage`

  ##### Keyword Arguments
  - **name**: `String`.


  Has overloading in C++



  Python prototype (for reference): 
  ```python3
  write(fs[, name]) -> None
  ```

  """
  @spec write(Evision.ML.DTrees.t(), Evision.FileStorage.t()) :: :ok | {:error, String.t()}
  def write(self, fs) when is_struct(fs, Evision.FileStorage)
  do
    positional = [
      fs: Evision.Internal.Structurise.from_struct(fs)
    ]
    :evision_nif.ml_DTrees_write(Evision.Internal.Structurise.from_struct(self), positional)
    |> __to_struct__()
  end
end