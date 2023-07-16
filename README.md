# Social Network Analysis with R

This repository contains code for performing social network analysis using R. It includes an R script (`analysis.R`) that reads a CSV file containing social network data, performs network analysis, calculates network metrics, visualizes the network, and saves the visualization as an image.

## Folder Structure

- `data/`: Contains the input data file, `social_network.csv`.
- `scripts/`: Contains the R script for social network analysis, `analysis.R`.
- `output/`: Contains the output file, `network_visualization.png`.

## Prerequisites

Make sure you have the following software and packages installed:

- R programming language (version 3.5 or higher)
- Required R packages: `igraph`, `ggplot2`

## Usage

1. Clone or download this repository to your local machine.

2. Navigate to the project directory.

3. Place your social network data in CSV format inside the `data/` folder, following the structure mentioned below:

   ```csv
   Name,Age,Source,Target
   John,25,John,Sarah
   Sarah,28,Sarah,John
   Sarah,28,Sarah,Emily
   Emily,30,Emily,Sarah
   Emily,30,Emily,John
   ```

   Modify or expand the dataset as needed, ensuring that the file is named `social_network.csv`.

4. Open the `analysis.R` script located in the `scripts/` folder and set the working directory to the project directory:

   ```R
   setwd("path_to_project_directory")
   ```

   Replace `"path_to_project_directory"` with the actual path to the project directory.

5. Run the `analysis.R` script in R.

6. After executing the script, the network visualization will be saved as `network_visualization.png` in the `output/` folder.

## Contributing

If you have any suggestions, improvements, or new features to propose, feel free to open an issue or submit a pull request. Contributions are welcome!

## License

This project is licensed under the [MIT License](LICENSE).
