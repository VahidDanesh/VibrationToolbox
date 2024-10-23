% check_orthogonal_orthonormal.m
% Function to check if a matrix is orthogonal or orthonormal
%
% Inputs:
%   Q - The input matrix
% Outputs:
%   isOrthogonal - Boolean indicating if the matrix is orthogonal
%   isOrthonormal - Boolean indicating if the matrix is orthonormal
%   msg - Message string explaining the result

function [isOrthogonal, isOrthonormal, msg] = check_orthogonal_orthonormal(Q)
    % Calculate Q^T * Q
    QTQ = Q' * Q;
    
    % Check if columns are orthogonal (dot product between different columns is 0)
    isOrthogonal = all(abs(Q' * Q - diag(diag(Q' * Q))) < 1e-10, 'all');
    
    % Check if QTQ is close to identity matrix (orthonormal)
    isOrthonormal = isequal(round(QTQ, 10), eye(size(Q)));
    
    % Set the message
    if isOrthonormal
        msg = 'The matrix is orthonormal.';
    elseif isOrthogonal
        msg = 'The matrix is orthogonal but not orthonormal.';
    else
        msg = 'The matrix is neither orthogonal nor orthonormal.';
    end
end
