classdef ChessPiece
    properties
        Color   % Color of the piece
        Symbol  % Symbol representing the piece
        Text    % Text object representing the piece on the board
        Type    % Type of piece
    end
    
    methods
        % Constructor
        function obj = ChessPiece(color, symbol, type)
            obj.Color = color;
            obj.Symbol = symbol;
            obj.Type = type;
            obj.Text = [];
        end
        % Method to create text object for the piece
        function obj = createText(obj, x, y, fontSize, chosenFont)
            obj.Text = text(x - 0.5, y - 0.5, obj.Symbol, 'FontName', chosenFont, 'FontSize', fontSize, 'Color', obj.Color, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
        end
        
        % Method to delete text object of the piece
        function obj = deleteText(obj)
            if ~isempty(obj.Text)
                delete(obj.Text);
                obj.Text = [];
            end
        end
    end
   
end
