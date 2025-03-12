classdef King < ChessPiece
    methods
        % Constructor
        function obj = King(color)
            obj = obj@ChessPiece(color, '♚', 'king');
        end
        function isValidMove = validMove(obj,ix,iy,fx,fy,~)
            check = false;
            if ~(ix == fx && iy == fy)
                if (ix == fx && abs(iy - fy) == 1) || (iy == fy && abs(ix - fy) == 1) || (abs(fx - ix) == 1 && abs(fy - iy) == 1)
                    check = true;
                end
            end
            
            isValidMove = check;
        end
    end
end