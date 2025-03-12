%P6
classdef Pawn < ChessPiece
    methods
        % Constructor
        function obj = Pawn(color)
            obj = obj@ChessPiece(color, '♟', 'pawn');
        end

        function isValidMove = validMove(obj, ix,iy,fx,fy, ~)
            check = false;
            if ~(ix == fx && iy == fy)
                if strcmp(obj.Color,'white')
                    if ix == fx && (iy == fy - 1 || fy == 4)
                        check = true;
                    end
                else
                    if ix == fx && (iy == fy + 1 || fy == 5)
                        check = true;
                    end
                end
            end
            isValidMove = check;
        end
    end
end