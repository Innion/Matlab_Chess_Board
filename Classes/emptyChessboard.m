function updatedChessboard = emptyChessboard(chessboard)

for i = 1:8
    for j = 1:8
        % Delete the text object at each square's position
        if ~isempty(chessboard{i,j}.Piece)
            % Delete the text of the piece
            chessboard{i,j}.Piece.deleteText();
        end
    end
end
disp("Chessboard emptied");
updatedChessboard = chessboard;
end