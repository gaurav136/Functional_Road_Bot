defmodule Task1bNumberDetection.MixProject do
  use Mix.Project

  def project do
    [
      app: :task1b_number_detection,
      version: "0.1.0",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:evision, "~> 0.1.15"},
      {:nx, "~> 0.3.0"},
      {:tesseract_ocr, "~> 0.1.5"}
    ]
  end
end
