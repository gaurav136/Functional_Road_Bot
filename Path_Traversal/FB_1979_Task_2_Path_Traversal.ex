defmodule Task2PathTraversal do
  @moduledoc """
  A module that implements functions for
  path planning algorithm and travels the path
  """

  @cell_map %{
    1 => [4],
    2 => [3, 5],
    3 => [2],
    4 => [1, 7],
    5 => [2, 6, 8],
    6 => [5, 9],
    7 => [4, 8],
    8 => [5, 7],
    9 => [6]
  }

  @matrix_of_sum [
    ["na", "na", 15],
    ["na", "na", 12],
    ["na", 10, "na"]
  ]

  @doc """
  #Function name:
          get_locations
  #Inputs:
          A 2d matrix namely matrix_of_sum containing two digit numbers
  #Output:
          List of locations of the valid_sum which should be in ascending order
  #Details:
          To find the cell locations containing valid_sum in the matrix
  #Example call:
          Check Task 2 Document
  """
  def get_locations(matrix_of_sum \\ @matrix_of_sum) do
    List.flatten(matrix_of_sum)
    |> Enum.with_index(fn ele, idx ->
      cond do
        ele |> is_number -> idx + 1
        true -> nil
      end
    end)
    |> Enum.reject(&is_nil/1)
  end

  @doc """
  #Function name:
          cell_traversal
  #Inputs:
          cell_map which contains all paths as well as the start and goal locations
  #Output:
          List containing the path from start to goal location
  #Details:
          To find the path from start to goal location
  #Example call:
          Check Task 2 Document
  """
  def cell_traversal(cell_map, start, goal) when start == goal do
    [start]
  end

  def cell_traversal(cell_map \\ @cell_map, start, goal) do
    find_path(cell_map, [start], start, goal)
  end

  def find_path(cell_map, visited, start, goal) do
    cond do
      not Task2PathTraversal.at_stop(cell_map, start, goal) ->
        cell_map[start]
        |> (&(&1 -- visited)).()
        |> Enum.map(fn cell ->
          find_path(cell_map, [start | visited], cell, goal)
        end)
        |> List.flatten()

      true ->
        Enum.reverse([goal | [start | Enum.drop(visited, -1)]])
    end
  end

  def at_stop(cell_map, start, goal) do
    Enum.member?(Map.fetch!(cell_map, start), goal)
  end

  @doc """
  #Function name:
          traverse
  #Inputs:
          a list (this will be generated in grid_traversal function) and the cell_map
  #Output:
          List of lists containing paths starting from the 1st cell and visiting every cell containing valid_sum
  #Details:
          To find shortest path from first cell to all valid_sum’s locations
  #Example call:
          Check Task 2 Document
  """

  def traverse([first | list], cell_map) do
    find_shortest(first, list, cell_map, [])
  end

  def find_shortest(first, list, cell_map, paths) when length(list) == 1 do
    [cell_traversal(cell_map, first, Enum.at(list, 0)) | paths]
  end

  def find_shortest(first, list, cell_map, paths) do
    [[_, goal], path] =
      list
      |> Enum.map(fn x ->
        [first, x]
      end)
      |> IO.inspect(label: :combinations)
      |> Enum.map(fn [start, goal] ->
        [[start, goal], cell_traversal(cell_map, start, goal)]
      end)
      |> IO.inspect(label: :paths_made)
      |> Enum.min_by(fn [_, path] -> length(path) end)
      |> IO.inspect(label: :min_path)

    Enum.reject(list, &(&1 == first)) |> IO.inspect()
    find_shortest(goal, list -- [goal], cell_map, [path | paths])
  end

  def comb(_, 0), do: [[]]
  def comb(_, []), do: []

  def comb(m, [h | t]) do
    for(l <- comb(m - 1, t), do: [h | l]) ++ comb(m, t)
  end

  @doc """
  #Function name:
          grid_traversal
  #Inputs:
          cell_map and matrix_of_sum
  #Output:
          List of keyword lists containing valid_sum locations along with paths obtained from traverse function
  #Details:
          Driver function which calls the get_locations and traverse function and returns the output in required format
  #Example call:
          Check Task 2 Document
  """
  def grid_traversal(cell_map \\ @cell_map, matrix_of_sum \\ @matrix_of_sum) do
    ([1] ++ get_locations(matrix_of_sum))
    |> traverse(cell_map)
    |> Enum.map(fn path_list ->
      [
        {Enum.at(path_list, -1)
         |> Integer.to_string()
         |> String.to_atom(), path_list}
      ]
    end)
  end

  def testing() do
    # locs = ([1] ++ Task2PathTraversal.get_locations())
    locs = Task2PathTraversal.get_locations()

    find_shortest(1, locs, @cell_map, [])
    |> IO.inspect()

    # |> traverse(@cell_map)
    # |> IO.inspect()

    # Task2PathTraversal.cell_traversal(@cell_map, 1, 8)
    # |> IO.inspect()
  end
end

defmodule T2A do
  @cell_map %{
    1 => [4],
    2 => [3, 5],
    3 => [2],
    4 => [1, 7],
    5 => [2, 6, 8],
    6 => [5, 9],
    7 => [4, 8],
    8 => [5, 7],
    9 => [6]
  }
  def trav(cell_map, visited, start_point, end_point) do
    if Enum.member?(visited, start_point) == false do
      Enum.map(cell_map[start_point], fn x ->
        trav(cell_map, [start_point | visited], x, end_point)
      end)
      |> List.flatten()
    else
      [start_point | visited]
    end
  end

  def testing() do
    trav(@cell_map, [], 1, 8)
    |> IO.inspect()
  end
end
