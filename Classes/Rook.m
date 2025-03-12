classdef Rook < ChessPiece
    methods
        % Constructor
        function obj = Rook(color)
            obj = obj@ChessPiece(color, '♜', 'rook');
        end
        % Method to check if the move is valid for a Rook piece
        function isValidMove = validMove(obj, ix, iy, fx, fy,~)
            check = false;
            if ~(ix == fx && iy == fy)
                if ix == fx || iy == fy
                    check = true;
                end
            end
            isValidMove = check;
        end
    end
end
