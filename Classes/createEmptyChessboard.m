function chessboard = createEmptyChessboard()

% Create an empty chessboard
chessboard = cell(8, 8);
for i = 1:8
    for j = 1:8
        if mod(i + j, 2) == 0
            color = 'white';
        else
            color = 'black';
        end
        chessboard{i, j} = ChessSquare(i, j, color);
    end
end

% Display the chessboard
hold on;
axis equal;
axis off;
displayEmptyChessBoard(chessboard);
displayNumerotation();

title('Empty Chessboard');
hold off;

% Display empty chessboard squares
    function displayEmptyChessBoard(chessboard)
        for i = 1:8
            for j = 1:8
                % Display the square on the chessboard
                if strcmp(chessboard{i, j}.Color, 'white')
                    rectangle('Position', [j-1, i-1, 1, 1], 'FaceColor', [245, 220, 160] / 255);
                else
                    rectangle('Position', [j-1, i-1, 1, 1], 'FaceColor', [139, 69, 19] / 255);
                end
            end
        end
    end

    function displayNumerotation()
        for i = 1:8
            text(-0.5, i-0.5, num2str(i), 'Color',[0.5,0.5,0.5] ,'HorizontalAlignment', 'center', 'FontName', 'Calibri', 'FontSize', 18);
        end

        % Add labels for columns (letters)
        for i = 1:8
            letter = char(96 + i);
            text(i-0.5, -0.5, letter,'Color',[0.5,0.5,0.5], 'HorizontalAlignment', 'center', 'FontName', 'Calibri', 'FontSize', 18);
        end
        plot([-1, 0], [1, 1], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [2, 2], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [3, 3], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [4, 4], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [5, 5], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [6, 6], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers
        plot([-1, 0], [7, 7], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between numbers

        plot([1, 1], [-1, 0],'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([2, 2], [-1, 0],'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([3, 3], [-1, 0], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([4, 4], [-1, 0], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([5, 5], [-1, 0], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([6, 6], [-1, 0], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
        plot([7, 7], [-1, 0], 'Color', [0.5,0.5,0.5], 'LineWidth', 0.5); % Line between letters
    end

end
