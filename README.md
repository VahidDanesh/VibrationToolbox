# VibrationToolbox

This repository contains a MATLAB toolbox designed to assist MEC532 students with key concepts in vibration analysis and linear algebra. The toolbox covers several important topics such as matrix properties, state-space representation, and system analysis.

## Project Structure

```bash
VibrationToolbox/
├── startup.m                                         # Adds directories to the MATLAB path
├── src/
│   ├── analysis/
│   │   ├── check_positive_definite.m                 # Function to check if a matrix is positive definite
│   │   ├── check_orthogonal_orthonormal.m            # Function to check orthogonal and orthonormal matrices
│   └── utilities/
└── examples/
    ├── DetermineWhetherMatrixIsSPD.mlx               # Example: Checking positive definite property of a matrix
    ├── RangeSpaceOfMatrix.mlx                        # Example: Range space of a matrix
    ├── NullSpaceOfMatrix.mlx                         # Example: Null space and range space of a matrix
    ├── SimilarityAndCongruenceTransformation.mlx     # Example: Similarity and congruence transformations
    ├── BlockMatrices.mlx                             # Example: Block matrices and their deteminant and inverse
    └── OrthogonalAndOrthonormalMatrix.mlx            # Example: Check for orthogonal and orthonormal matrices

```


## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/VahidDanesh/VibrationToolbox.git
   cd VibrationToolbox
   ```
2. Add the directories to the MATLAB path by running `startup.m` in MATLAB. Type `startup` in `Command Window`
