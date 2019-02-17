function B = RESIZENN(A, sf)

%sf is sizing factor
    
    [A_x, A_y, A_ch] = size(A);
    B_x = A_x * sf;
    B_y = A_y * sf;
    
    row_indices = ceil((1:B_x)/sf);
    col_indices = ceil((1:B_y)/sf);
    
    B = A(row_indices, col_indices, :);
end