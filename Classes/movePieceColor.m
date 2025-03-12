function updatedChessboard = movePieceColor(chessboard, guiFigure, chosenFont, color)
set(guiFigure, 'WindowButtonDownFcn', @clickCallback);

set(guiFigure, 'Name','waiting for move');
clickCount = 1;
startX = 0;
startY = 0;
targetX = 0;
targetY = 0;

    function clickCallback(~, ~)
        clickPositions = get(gca, 'CurrentPoint');

        % Check if the click was inside the chessboard
        if 1 + fix(clickPositions(clickCount,1)) >= 1 && 1 + fix(clickPositions(clickCount,1)) <= 8 && 1 + fix(clickPositions(clickCount,2)) >= 1 && 1 + fix(clickPositions(clickCount,2)) <= 8
            % Check if the click was on an empty square and it's the second click
            if isempty(chessboard{1 + fix(clickPositions(2,2)),1 + fix(clickPositions(2,1))}.Piece) && clickCount == 2
                targetX = 1 + fix(clickPositions(2,1));
                targetY = 1 + fix(clickPositions(2,2));
                disp('Square to move the piece:');
                disp(['Target X: ', num2str(targetX), ', Target Y: ', num2str(targetY)]);
                %row = y, col = x
                targetRow = targetY;
                targetCol = targetX;
                startRow = startY;
                startCol = startX;

                %check if it is a valid move
                piece = chessboard{startRow,startCol}.Piece;
                if piece.validMove(startX, startY, targetX, targetY)
                    disp('Square to move the piece:');
                    disp(['Target X: ', num2str(targetX), ', Target Y: ', num2str(targetY)]);

                    % Move the piece
                    chessboard{startRow,startCol}.Piece = chessboard{startRow,startCol}.Piece.deleteText();
                    chessboard{targetRow,targetCol}.Piece = chessboard{startRow,startCol}.Piece;
                    disp(chessboard{startRow,startCol}.Piece.Symbol);
                    chessboard{startRow,startCol}.Piece = [];
                    disp('Piece moved');

                    % Reset click count and callback
                    set(guiFigure, 'WindowButtonDownFcn', '');

                    %display the updated chessboard
                    chessboard{targetRow,targetCol}.Piece = chessboard{targetRow,targetCol}.Piece.createText(targetX,targetY,30,chosenFont);
                    % Return the updated chessboard
                    updatedChessboard = chessboard;
                    set(guiFigure, 'Name','Piece moved');
                end

            else
                % Check if the click was on a opposing piece and it's the second click
                if ~isempty(chessboard{1 + fix(clickPositions(2,2)),1 + fix(clickPositions(2,1))}.Piece) && clickCount == 2
                    if chessboard{1 + fix(clickPositions(2,2)),1 + fix(clickPositions(2,1))}.Piece.Color ~= color
                        targetX = 1 + fix(clickPositions(2,1));
                        targetY = 1 + fix(clickPositions(2,2));
                        disp('Square to move the piece:');
                        disp(['Target X: ', num2str(targetX), ', Target Y: ', num2str(targetY)]);
                        %row = y, col = x
                        targetRow = targetY;
                        targetCol = targetX;
                        startRow = startY;
                        startCol = startX;

                        %check if it is a valid move
                        piece = chessboard{startRow,startCol}.Piece;
                        if piece.validMove(startX, startY, targetX, targetY, chessboard)
                            disp('Square to move the piece:');
                            disp(['Target X: ', num2str(targetX), ', Target Y: ', num2str(targetY)]);

                            % Move the piece
                            chessboard{targetRow,targetCol}.Piece = chessboard{targetRow,targetCol}.Piece.deleteText();
                            chessboard{targetRow,targetCol}.Piece = [];

                            chessboard{startRow,startCol}.Piece = chessboard{startRow,startCol}.Piece.deleteText();
                            chessboard{targetRow,targetCol}.Piece = chessboard{startRow,startCol}.Piece;
                            disp(chessboard{startRow,startCol}.Piece.Symbol);
                            chessboard{startRow,startCol}.Piece = [];
                            disp('Piece moved');

                            % Reset click count and callback
                            set(guiFigure, 'WindowButtonDownFcn', '');

                            %display the updated chessboard
                            chessboard{targetRow,targetCol}.Piece = chessboard{targetRow,targetCol}.Piece.createText(targetX,targetY,30,chosenFont);
                            % Return the updated chessboard
                            updatedChessboard = chessboard;
                            set(guiFigure, 'Name','Piece moved');
                        end

                    end
                end
            end


            % Check if the click was on a square containing a piece and it's the first click
            if ~isempty(chessboard{1 + fix(clickPositions(1,2)),1 + fix(clickPositions(1,1))}.Piece) && clickCount == 1 && strcmp(chessboard{1 + fix(clickPositions(1,2)),1 + fix(clickPositions(1,1))}.Piece.Color,color)
                startX = 1 + fix(clickPositions(1,1));
                startY = 1 + fix(clickPositions(1,2));
                clickCount = 2;
                disp('Selected Piece: ');
                disp(['Start X: ', num2str(startX), ', Start Y: ', num2str(startY)]);
            end
        end
    end

waitfor(guiFigure,'Name','Piece moved');
updatedChessboard = chessboard;
disp('chessboard updated');
end

