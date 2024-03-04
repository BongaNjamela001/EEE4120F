function sorted_matrix = bubbleSort(matrix)
    % Loop through each column of the matrix
    num_cols = size(matrix,2);
    num_rows = size(matrix,1);
    for col = 1:num_cols
        % Apply bubble sort to the current column
        for i = 1:num_rows-1
            for j = 1:num_rows-i
                if matrix(j, col) > matrix(j+1, col)
                    % Swap elements
                    temp = matrix(j, col);
                    matrix(j, col) = matrix(j+1, col);
                    matrix(j+1, col) = temp;
                end
            end
        end
    end

    % Assign the sorted matrix to the output variable
    sorted_matrix = matrix;
end