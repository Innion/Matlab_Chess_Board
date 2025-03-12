function Matlab_Chessboard_Udriste_Catalin()
clc
% Font name
% global chosenFont;
chosenFont = 'Segoe UI Symbol';  % Use 'Segoe UI Symbol' font


% Get the directory of the currently running script
currentScriptPath = fileparts(mfilename('fullpath'));

folderName = 'Classes'; 

% Create the full path to the folder within the same directory as your script
folderPath = fullfile(currentScriptPath, folderName);

% Add the folder to the MATLAB search path
addpath(folderPath);


% Create a figure and set properties
guiFigure = figure('Name', 'ChessBoard','Color',[1,1,1], 'Units', 'pixels', 'Position', [100, 100, 1280, 720], 'MenuBar', 'none', 'ToolBar', 'none', 'Resize', 'on', 'WindowStyle', 'modal');
set(guiFigure, 'Name', 'ChessBoard');

% Create an empty chessboard initially
% global chessboard;
chessboard = [];

% Create buttons with normalized positions
btnPlayGame = uicontrol('Style', 'pushbutton', 'String', 'Play Classic Game', 'Units', 'normalized', 'Position', [0.4, 0.05, 0.2, 0.05], 'Callback', @playClassical);


    function playClassical(~,~)
        btnMovePieceWhite = uicontrol('Style', 'pushbutton', 'String', 'Move Black','ForegroundColor','white', 'Units', 'normalized', 'Position', [0.9, 0.9, 0.1, 0.05], 'BackgroundColor',[0.34, 0.25, 0.15], 'Callback', @moveBlackPiece);
        btnMovePieceBlack = uicontrol('Style', 'pushbutton', 'String', 'Move White', 'Units', 'normalized', 'Position', [0.9, 0.85, 0.1, 0.05], 'BackgroundColor',[0.92, 0.89, 0.72], 'Callback', @moveWhitePiece);
        % addTimer(guiFigure);
        initializeCallback();

    end


    function moveWhitePiece(~, ~)
        chessboard = movePieceColor(chessboard, guiFigure, chosenFont,'white');

    end
    function moveBlackPiece(~, ~)
        chessboard = movePieceColor(chessboard, guiFigure, chosenFont,'black');
    end



    function initializeCallback(~, ~)
        chessboard = createEmptyChessboard();
        % Call initializeChessboard function with the created chessboard and chosenFonts
        if ~isempty(chessboard)
            chessboard = initialiseChessboard(chessboard);
            % Display the chessboard with pieces
            hold on;
            axis equal;
            axis off;

            chessboard = displayPieces(chessboard, chosenFont, guiFigure);

            title('Chessboard','Color',[0.3,0.2,0.2], 'HorizontalAlignment', "center", 'FontName', 'Arial', 'FontSize', 24);
            hold off;
        end
    end
    function moveOnePiece(~, ~)
        chessboard = movePiece(chessboard, guiFigure, chosenFont);

    end
    function displayThePieces(~,~)
        chessboard = displayPieces(chessboard, chosenFont);
    end
    function emptyTheChessboard(~,~)
        chessboard = emptyChessboard(chessboard);
    end
    function createEmptyCallback(~, ~)
        % Call createEmptyChessboard function and store the result in chessboard
        chessboard = createEmptyChessboard();
    end
    % function addTimer(guiFigure)
    % 
    %     % Create a text label for displaying the timer within the GUI figure
    %     timerLabel = uicontrol('Parent', guiFigure, 'Style', 'text', 'String', '0 seconds', 'FontSize', 16, 'HorizontalAlignment', 'center', 'Position', [100, 100, 100, 30]);
    % 
    %     % Initialize timer value
    %     timerValue = 0;
    % 
    %     % Create a timer object
    %     t = timer('ExecutionMode', 'fixedRate', 'Period', 1, 'TimerFcn', @(~,~)updateTimer());
    %     start(t);
    %     % Function to update the timer display
    %     function updateTimer()
    %         timerValue = timerValue + 1;
    %         set(timerLabel, 'String', [num2str(timerValue) ' seconds']); % Update the timer label
    %     end
    % end




end



