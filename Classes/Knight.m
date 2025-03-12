classdef Knight < ChessPiece
    methods
        % Constructor
        function obj = Knight(color)
            obj = obj@ChessPiece(color, '♞', 'knight');
        end
        function isValidMove = validMove(obj,ix,iy,fx,fy,~)
            check = false;
            if ~(ix == fx && iy == fy)
                if (abs (ix - fx) == 1 && abs(iy - fy) == 2) || (abs (iy - fy) == 1 && abs(ix - fx) == 2)
                    check = true;
                end
            end
            isValidMove = check;
        end
    end
end