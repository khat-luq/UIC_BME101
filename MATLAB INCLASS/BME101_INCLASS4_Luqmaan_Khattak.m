studentInformation = ["Student A","Student B","Student C";"4.0","2.0","3.0";"2028","2029","2027"];

% The following has been axed (thanks tutorial)
%disp(studentInformation(1,1))
%disp(studentInformation(2,1))
%disp(studentInformation(3,1))

% This has also been axed (can the tutorial maybe not be funny)
%disp(studentInformation(:,1))

% BRUHH
%studentNames = studentInformation(1,:);
%disp("Student 1: "+studentNames(1))
%disp("Student 2: "+studentNames(2))
%disp("Student 3: "+studentNames(3))

for i = 1:3
    fprintf("Student Name %s  |  Student GPA: %s  |  Student Grad. Year: %s \n",studentInformation(1,i),studentInformation(2,i),studentInformation(3,i))
end
