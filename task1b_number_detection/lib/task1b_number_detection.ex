defmodule Task1bNumberDetection do
  @moduledoc """
  A module that implements functions for detecting numbers present in a grid in provided image
  """
  alias Evision, as: OpenCV

  @doc """
  #Function name:
         identifyCellNumbers
  #Inputs:
         image  : Image path with name for which numbers are to be detected
  #Output:
         Matrix containing the numbers detected
  #Details:
         Function that takes single image as an argument and provides the matrix of detected numbers
  #Example call:

      iex(1)> Task1bNumberDetection.identifyCellNumbers("images/grid_1.png")
      [["22", "na", "na"], ["na", "na", "16"], ["na", "25", "na"]]
  """

  def get_img_ref(image) do
    OpenCV.imread(image)
  end

  def get_gray_img_ref(mat1) do
    OpenCV.cvtColor(mat1, OpenCV.cv_COLOR_BGR2GRAY())
  end

  def get_thresh_img_ref(mat2) do
    {_number, mat3} = OpenCV.threshold(mat2, 3, 255, OpenCV.cv_THRESH_BINARY_INV())
    mat3
  end

  def get_cont_from_img(mat3) do
    {[cont], _hierarchy} =
      OpenCV.findContours(mat3, OpenCV.cv_RETR_EXTERNAL(), OpenCV.cv_CHAIN_APPROX_SIMPLE())

    {x, y, w, h} = OpenCV.boundingRect(cont)
    tensor = OpenCV.Mat.to_nx(mat3, Nx.BinaryBackend)
    sliced_tensor = Nx.slice(tensor, [y, x], [w, h])
    OpenCV.Mat.from_nx(sliced_tensor)
  end

  def get_thresh_img_ref2(mat4) do
    {_number, mat5} = OpenCV.threshold(mat4, 3, 255, OpenCV.cv_THRESH_BINARY_INV())
    mat5
  end

  def get_cont_from_img2(mat5) do
    {[h | t], _hierarchy} =
      OpenCV.findContours(mat5, OpenCV.cv_RETR_EXTERNAL(), OpenCV.cv_CHAIN_APPROX_SIMPLE())

    # mat4 = OpenCV.drawContours(get_img_ref2("mat3.png"),[cont],0,{255,0,0}, [thickness: 10])
    tensor_boxes = OpenCV.Mat.to_nx(mat5, Nx.BinaryBackend)

    list =
      [h | t]
      |> Enum.map(fn b -> OpenCV.boundingRect(b) end)
      |> Enum.filter(fn {_x, _y, w, h} -> w * h > 5000 end)

    len =
      list
      |> Enum.map(fn {x, _y, _w, _h} -> x end)
      |> Enum.uniq()
      |> length()

    list
    |> Enum.map(fn {x, y, w, h} -> Nx.slice(tensor_boxes, [y, x], [w, h]) end)
    |> Enum.map(fn x -> OpenCV.Mat.from_nx(x) end)
    |> Enum.with_index()
    |> Enum.map(fn {box, i} ->
      OpenCV.imwrite("./outputs/#{i}.png", box)
      TesseractOcr.read("./outputs/#{i}.png", %{psm: 8, c: "tessedit_char_whitelist=0987654321"})
    end)
    |> Enum.reverse()
    |> Enum.map(fn
      "" -> "na"
      x -> x
    end)
    |> Enum.chunk_every(len)
  end

  def identifyCellNumbers(image) do
    if not File.exists?("outputs") do
      File.mkdir!("outputs")
    end

    image
    |> get_img_ref
    |> get_gray_img_ref
    |> get_thresh_img_ref
    |> get_cont_from_img
    |> get_thresh_img_ref2
    |> get_cont_from_img2
  end

  @doc """
  #Function name:
         identifyCellNumbersWithLocations
  #Inputs:
         matrix  : matrix containing the detected numbers
  #Output:
         List containing tuple of detected number and it's location in the grid
  #Details:
         Function that takes matrix generated as an argument and provides list of tuple
  #Example call:

        iex(1)> matrix = Task1bNumberDetection.identifyCellNumbers("images/grid_1.png")
        [["22", "na", "na"], ["na", "na", "16"], ["na", "25", "na"]]
        iex(2)> Task1bNumberDetection.identifyCellNumbersWithLocations(matrix)
        [{"22", 1}, {"16", 6}, {"25", 8}]
  """
  def identifyCellNumbersWithLocations(matrix) do
    matrix
    |> List.flatten()
    |> Enum.with_index()
    |> Enum.filter(fn {x, _y} -> x !== "na" end)
    |> Enum.map(fn {x, y} -> {x, y + 1} end)
  end

  @doc """
  #Function name:
         driver
  #Inputs:
         path  : The path where all the provided images are present
  #Output:
         A final output with image name as well as the detected number and it's location in gird
  #Details:
         Driver functional which detects numbers from mutiple images provided
  #Note:
         DO NOT EDIT THIS FUNCTION
  #Example call:

      iex(1)> Task1bNumberDetection.driver("images/")
      [
        {"grid_1.png", [{"22", 1}, {"16", 6}, {"25", 8}]},
        {"grid_2.png", [{"13", 3}, {"27", 5}, {"20", 7}]},
        {"grid_3.png", [{"17", 3}, {"20", 4}, {"11", 5}, {"15", 9}]},
        {"grid_4.png", []},
        {"grid_5.png", [{"13", 1}, {"19", 2}, {"17", 3}, {"20", 4}, {"16", 5}, {"11", 6}, {"24", 7}, {"15", 8}, {"28", 9}]},
        {"grid_6.png", [{"20", 2}, {"17", 6}, {"23", 9}, {"15", 13}, {"10", 19}, {"19", 22}]},
        {"grid_7.png", [{"19", 2}, {"21", 4}, {"10", 5}, {"23", 11}, {"15", 13}]}
      ]
  """
  def driver(path \\ "images/") do
    # Getting the path of images
    image_path = path <> "*.png"
    # Creating a list of all images paths with extension .png
    image_list = Path.wildcard(image_path)

    # Parsing through all the images to get final output using the two funtions which teams need to complete
    Enum.map(image_list, fn x ->
      {String.trim_leading(x, path), identifyCellNumbers(x) |> identifyCellNumbersWithLocations}
    end)
  end
end
