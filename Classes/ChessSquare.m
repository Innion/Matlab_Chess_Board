classdef ChessSquare
    properties
        is_empty % Flag indicating if the square is empty
        Row % Row number of the square
        Column % Column number of the square
        Color % Color of the square
        Piece % Piece on the square (if any)
    end
    
    methods
        % Constructor
        function obj = ChessSquare(row, column, color, piece)
            obj.Row = row;
            obj.Column = column;
            obj.Color = color;
            if nargin == 4
                obj.is_empty = false;
                obj.Piece = piece;
            else
                % If no piece provided, set is_empty to true and create a default empty piece
                obj.is_empty = true;
            end
        end
    end
end