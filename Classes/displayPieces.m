function updatedChessboard = displayPieces(chessboard, chosenFont, guiFigure)
for i = 1:8
    for j = 1:8
        % Display the piece on the square, if present
        if ~isempty(chessboard{i, j}.Piece)
            % piece = chessboard{i, j}.Piece;
            % pieceSymbol = piece.Symbol;
            chessboard{i,j}.Piece = chessboard{i,j}.Piece.createText(j, i, 30, chosenFont);
            % chessboard{i,j}.Piece.Text = text(j - 0.5, i - 0.5, pieceSymbol, 'FontSize', 30, 'FontName', chosenFont, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle', 'Color', 'k');
        end
    end
end
updatedChessboard = chessboard;
end