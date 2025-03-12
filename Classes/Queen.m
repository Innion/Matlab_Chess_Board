classdef Queen < ChessPiece
    methods
        % Constructor
        function obj = Queen(color)
            obj = obj@ChessPiece(color, '♛', 'queen');
        end
        function isValidMove = validMove(obj, ix,iy,fx,fy,~)
            check = false;
            if ~(ix == fx && iy == fy)
                if ix == fx || iy == fy || ix == fx || iy == fy || abs(fx - ix) == abs(fy - iy)
                    check = true;
                end
            end
            
            isValidMove = check;
        end
    end
end