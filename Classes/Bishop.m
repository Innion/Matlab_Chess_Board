classdef Bishop < ChessPiece
    methods
        % Constructor
        function obj = Bishop(color)
            obj = obj@ChessPiece(color, '♝', 'bishop');
        end
        function isValidMove = validMove(obj,ix,iy,fx,fy,chessboard, ~)
            check = false;
            if ~(ix == fx && iy == fy)
                if abs(fx - ix) == abs(fy - iy)
                    check = true;
                end
            end
            if check == true 
                for i = ix:fx
                    if ~isempty(chessboard{i,i})
                        check = false;
                        break;
                    end
                end
            end
            isValidMove = check;
        end
    end
end