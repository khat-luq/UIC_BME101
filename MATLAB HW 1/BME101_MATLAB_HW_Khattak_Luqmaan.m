%% Credits
% Project: BME 101 Homework 1 (2025)
% Template Author: Benjamin Broz
% Student Name: Luqmaan Khattak
%% Starting Data !!DO NOT EDIT THIS SECTION!!
clc
disp(" ")
patientNames = ["C. Kiramman","P. Parker","T. Sparkle","W. White","G. House"];
patientData = [
    8321,450,3535,12682,0; % Service/surgery cost
    2874,310,875,4892,142; % Medical Supplies cost
    8.5,8.5,8.5,8.5,8.5; % Additional tax/expenses based on a percentage
    4000,0,200,8900,0; % Amount covered by insurance
    32,3,12,120,1]; % Months planned to complete payment

%% Section 1 - Individual Patient
function patientTotal = individualPatient(patientNumber,patientNames,patientData)
% Type Section 1 Below
    
    % Initial Data Extraction from 'patientNames' and 'patientData'.
    patientName = patientNames(patientNumber);
    patientSurgeryCost = patientData(1,patientNumber);
    patientSupplyCost = patientData(2,patientNumber);
    patientTaxPercentage = patientData(3,patientNumber);
    patientCoverage = patientData(4,patientNumber);
    patientMonthsToPay = patientData(5,patientNumber);
    
    % Patient Calculations
    patientCombinedCost = patientSurgeryCost + patientSupplyCost - patientCoverage;
    patientTaxAmount = patientCombinedCost * patientTaxPercentage;
    patientTotal = (patientCombinedCost + patientTaxAmount);
    patientMonthlyRate = patientTotal/patientMonthsToPay;

    % Patient Costs End User Display
    fprintf("-------------------------------------\nPatient Name: %s \nSurgery Cost: $%.2f \nSupply Cost: $%.2f \nCoverage: $%.2f \nAdditional Tax: $%.2f \nTotal Bill: $%.2f \nMonths To Pay: %.0f Months \nMonthly Rate: %.2f per month\n", patientName, patientSurgeryCost, patientSupplyCost, patientCoverage, patientTaxAmount, patientTotal, patientMonthsToPay, patientMonthlyRate)

% Type Section 1 Above
end

%% Section 2 - Complete Bill Overview
function allPatients(patientNames,patientData)
% Type Section 2 Below

% Collect the patient total of all 5 patients and make a list of their totals. 
patientTotalList = [0, 0, 0, 0, 0];

for i = 1:5
    patientTotalList(i) = individualPatient(i,patientNames,patientData);
end

% Patient Monthly Rate Calculation
MonthlyRateList = patientTotalList./patientData(5,:);

% Other Patient Calculations

patientTotalList_Sum = sum(patientTotalList); % Sum of the patient's total list
patientTotalList_Average = mean(patientTotalList); % Average of the patient's total list
patientMonthlyList_Average = mean(MonthlyRateList); % Average of the monthly rate list
[patientMonthlyList_MinCost, patientMonthlyList_MinIndex] = min(MonthlyRateList); % The amount of the patient with the lowest monthly rate
[patientMonthlyList_MaxCost, patientMonthlyList_MaxIndex] = max(MonthlyRateList); % The amount of the patient with the highest monthly rate
patientMonthlyList_MinName = patientNames(patientMonthlyList_MinIndex); % The name of the patient with the lowest monthly rate
patientMonthlyList_MaxName = patientNames(patientMonthlyList_MaxIndex); % The name of the patient with the highest monthly rate


% Patient Bill Overview End User Display
fprintf("-------------------------------------\nSum of all bills: %.2f \nAverage total bill $%.2f \nAverage monthly rate: $%.2f \nThe patient with the lowest rate is %s at $%.2f \nThe patient with the highest rate is %s at $%.2f\n", patientTotalList_Sum, patientTotalList_Average, patientMonthlyList_Average, patientMonthlyList_MinName, patientMonthlyList_MinCost, patientMonthlyList_MaxName, patientMonthlyList_MaxCost);

% Type Section 2 Above
end

%% Section 3 - Staff Photo Display
function staffImageDisplay(staffSelection)
% Type Section 3 Below

% Image Displayer
switch staffSelection
    case 1 % Displays Dr. Grey Image
        imshow("Doctor1.png")
    case 2 % Displays "I AM A SURGEON" Image
        imshow("Doctor2.png")
    case 3 % Resizes by 0.5 and displays the Vicodin Addict's Image
        bigHouse = imread("Doctor3.png");
        littleHouse = imresize(bigHouse, .5);
        imshow(littleHouse)
    case 4 % Showcases images of all previous cases in a tiled layout
        tiledlayout(1,3)
        % Grey
        nexttile
        imshow("Doctor1.png")
        % "I AM A SURGEON"
        nexttile
        imshow("Doctor2.png")
        % Vicodin Addict
        nexttile
        bigHouse = imread("Doctor3.png");
        littleHouse = imresize(bigHouse, .5);
        imshow(littleHouse)
end

% Type Section 3 Above
end

%% Section 4 - Sine Graph
function sineGraph()
% Type Section 4 Below

% Plotting
x = linspace(0,2*pi,200);
y = sin(x);
plot(x,y,"-c","LineWidth",3);

% Labeling
xlabel("Time (s)")
ylabel("Amplitude")
title("Sine Graph")
legend("Sine Wave")

% Formatting
xlim([-.5,2*pi+.5])
ylim([-1.5,1.5])
grid on

% Type Section 4 Above   
end

%% Background Code !!DO NOT EDIT THIS SECTION!!
initialMenuOptions = ["Patient Bill","Complete Bill Overview","Staff Photos","Sine Graph"];
while true
    [selection,tf] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Exit",OKString="Accept",Name="BME 101 Homework 2025F",ListString=initialMenuOptions,ListSize=[300,70]);
    if selection == 1
        [patientSelection,exitCheck] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Back",OKString="Accept",Name="BME 101 Homework 2025F",ListString=patientNames,ListSize=[300,90]);
        if exitCheck == 1
            clc
            individualPatient(patientSelection,patientNames,patientData);
            input("[Press enter when done]")
            fprintf(repmat('\b',1,24))
        end
    elseif selection == 2
        clc
        allPatients(patientNames,patientData)
        disp(" ")
        input("[Press enter when done]")
        fprintf(repmat('\b',1,24))
    elseif selection == 3
    [staffSelection,exitCheck] = listdlg(PromptString="Select An Option:",SelectionMode="single",CancelString="Back",OKString="Accept",Name="BME 101 Homework 2025F",ListString=["Doctor One","Doctor Two","Doctor Three","Display All"],ListSize=[300,70]);
        if exitCheck == 1
            clc
            staffImageDisplay(staffSelection)
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