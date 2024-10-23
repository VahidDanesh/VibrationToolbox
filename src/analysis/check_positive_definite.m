
function [isPD, msg] = check_positive_definite(M)
    % check_positive_definite.m
    % Function to check if a matrix is positive definite
    %
    % Inputs:
    %   M - The input matrix
    % Outputs:
    %   isPD - Boolean indicating if the matrix is positive definite
    %   msg  - Message string for user clarification
    


    % Default output
    isPD = false;
    msg = '';
    
    % Check if matrix is symmetric
    if ~issymmetric(M)
        msg = 'Matrix is not symmetric.';
        return;
    end
    
    % Try Cholesky decomposition to check positive definiteness
    try
        chol(M);
        isPD = true;
        msg = 'Matrix is positive definite.';
    catch
        msg = 'Matrix is not positive definite.';
    end
end