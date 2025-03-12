function chessboard = initialiseChessboard(chessboard)

% Place pieces on the chessboard
placePieces(chessboard);

% Place pieces on the chessboard
    function placePieces(chessboard)
        chessboard{2, 1}.Piece = Pawn('white');
        chessboard{2, 2}.Piece = Pawn('white');
        chessboard{2, 3}.Piece = Pawn('white');
        chessboard{2, 4}.Piece = Pawn('white');
        chessboard{2, 5}.Piece = Pawn('white');
        chessboard{2, 6}.Piece = Pawn('white');
        chessboard{2, 7}.Piece = Pawn('white');
        chessboard{2, 8}.Piece = Pawn('white');

        chessboard{1, 1}.Piece = Rook('white');
        chessboard{1, 2}.Piece = Knight('white');
        chessboard{1, 3}.Piece = Bishop('white');
        chessboard{1, 4}.Piece = Queen('white');
        chessboard{1, 5}.Piece = King('white');
        chessboard{1, 6}.Piece = Bishop('white');
        chessboard{1, 7}.Piece = Knight('white');
        chessboard{1, 8}.Piece = Rook('white');

        chessboard{7, 1}.Piece = Pawn('black');
        chessboard{7, 2}.Piece = Pawn('black');
        chessboard{7, 3}.Piece = Pawn('black');
        chessboard{7, 4}.Piece = Pawn('black');
        chessboard{7, 5}.Piece = Pawn('black');
        chessboard{7, 6}.Piece = Pawn('black');
        chessboard{7, 7}.Piece = Pawn('black');
        chessboard{7, 8}.Piece = Pawn('black');

        chessboard{8, 1}.Piece = Rook('black');
        chessboard{8, 2}.Piece = Knight('black');
        chessboard{8, 3}.Piece = Bishop('black');
        chessboard{8, 4}.Piece = Queen('black');
        chessboard{8, 5}.Piece = King('black');
        chessboard{8, 6}.Piece = Bishop('black');
        chessboard{8, 7}.Piece = Knight('black');
        chessboard{8, 8}.Piece = Rook('black');

        
        assignin('caller', 'chessboard', chessboard);
    end
end
