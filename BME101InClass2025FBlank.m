%% Credits
% Project: BME 101 2025 Fall in class example
% Template Author: Benjamin Broz
% Student Name: 
%% Starting Data !!DO NOT EDIT THIS SECTION!!
clc
disp(" ")
groceryItemNames = ["Apples","Bananas","Pears","Milk","Eggs"];
groceryItemInformation = [
    3.00,0.78,2.00,2.99,5.99 % Original Price
    0.00,0.00,1.00,0.50,1.00 % Sale Discount
    10.25,10.25,10.25,10.25,10.25 % Sales Tax
    3,2,1,2,1]; % Quantity of item or pounds of produce

%% Section 1 - Individual Item Processing
function itemTotal = individualItem(itemNumber,groceryItemNames,groceryItemInformation)
% Type Section 1 Below



% Type Section 1 Above
end

%% Section 2 - All Item Processing
function allItems(groceryItemNames,groceryItemInformation)
% Type Section 2 Below



% Type Section 2 Above
end

%% Section 3 - Item Display
function itemImageDisplay(itemSelection)
% Type Section 3 Below



% Type Section 3 Above
end

%% Section 4 - Sine Graph
function sineGraph()
% Type Section 4 Below



% Type Section 4 Above   
end

%% Background Code !!DO NOT EDIT THIS SECTION!!
initialMenuOptions = ["Individual Item","Shopping Trip Overview","Item Images","Sine Graph"];
while true
    [selection,tf] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Exit",OKString="Accept",Name="BME 101 In Class Example",ListString=initialMenuOptions,ListSize=[300,70]);
    if selection == 1
        [itemSelection,exitCheck] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Back",OKString="Accept",Name="BME 101 In Class Example",ListString=groceryItemNames,ListSize=[300,90]);
        if exitCheck == 1
            clc
            individualItem(itemSelection,groceryItemNames,groceryItemInformation);
            input("[Press enter when done]")
            fprintf(repmat('\b',1,24))
        end
    elseif selection == 2
        clc
        allItems(groceryItemNames,groceryItemInformation)
        disp(" ")
        input("[Press enter when done]")
        fprintf(repmat('\b',1,24))
    elseif selection == 3
    [itemSelection,exitCheck] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Back",OKString="Accept",Name="BME 101 In Class Example",ListString=[groceryItemNames,"Display All"],ListSize=[300,105]);
        if exitCheck == 1
            clc
            itemImageDisplay(itemSelection)
            input("[Press enter when done]")
            fprintf(repmat('\b',1,24))
            close all
        end
    elseif selection == 4
        clc
        sineGraph
        input("[Press enter when done]")
        fprintf(repmat('\b',1,24))
        close all
    end
    if tf == 0
        clc
        break
    end
end
% !!PLEASE DO NOT EDIT THIS SECTION!!