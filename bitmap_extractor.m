%  this is the code to extract the neccessary bitmaps
clear all
clc



fileID=fopen("test.txt","r");
dataString=fscanf(fileID,'%d');
fclose(fileID);

 
char1=zeros(8,5)
% % char2=zeros(8,5)
% % char3=zeros(8,5)
% % char4=zeros(8,5)
% % char5=zeros(8,5)
% % char6=zeros(8,5)
% % char7=zeros(8,5)
% % char8=zeros(8,5)
% % char9=zeros(8,5)
% % char10=zeros(8,5)
% % char11=zeros(8,5)
% % char12=zeros(8,5)
% % char13=zeros(8,5)
% % char14=zeros(8,5)
% % char15=zeros(8,5)
% % char16=zeros(8,5)


hello=splitString(dataString)

firstCellContent=hello{1};
disp(firstCellContent)

% Display the contents of each cell in the cell array.



selectIndicies=[1 9 17 25 33 41 49 57];

new_cellMatrix1=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix2=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix3=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix4=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix5=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix6=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix7=fillCellMatrix(hello,selectIndicies)
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix8=fillCellMatrix(hello,selectIndicies)



% the first 8 characters lets fricking goo
test=new_cellMatrix8{1}
resultvector=zeros(8,5)

for k=1:8
    test=new_cellMatrix8{k};
    for l=1:5
        resultvector(k,l)=test(l);
        
    
    end
    
end
resultvector




function indiciesArray=pushIndicies(selectIndicies)
    for j=1:8

    indiciesArray(j)=selectIndicies(j)+1;

    end
    return
end
    
function cellMatrix=fillCellMatrix(splitString,selectIndicies)
    


    for i=1:8
        cellMatrix(i)=splitString(selectIndicies(i));
    end

    
    return
        
end





function rowVectors = splitString(dataString)
    % Check if the length of dataString is a multiple of 5.
    if mod(length(dataString), 5) ~= 0
        error('The length of dataString must be a multiple of 5.');
    end

    % Calculate the number of row vectors.
    numRowVectors = length(dataString) / 5;

    % Initialize a cell array to store the row vectors.
    rowVectors = cell(1, numRowVectors);

    % Split the dataString into row vectors.
    for i = 1:numRowVectors
        start_idx = (i - 1) * 5 + 1;
        end_idx = i * 5;
        rowVectors{i} = dataString(start_idx:end_idx);
    end
end









