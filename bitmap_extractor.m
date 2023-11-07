%  this is the code to extract the neccessary bitmaps
clear all
clc



fileID=fopen("test.txt","r");
dataString=fscanf(fileID,'%d');
fclose(fileID);

 
% % char1=zeros(8,5)
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


hello=splitString(dataString);

% firstCellContent=hello{1};
% disp(firstCellContent)

% Display the contents of each cell in the cell array.



selectIndicies=[1 9 17 25 33 41 49 57];

new_cellMatrix1=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix2=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix3=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix4=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix5=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix6=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix7=fillCellMatrix(hello,selectIndicies);
selectIndicies=pushIndicies(selectIndicies);
new_cellMatrix8=fillCellMatrix(hello,selectIndicies);



% selectIndicies
% the first 8 characters lets fricking goo





char1=getResultvector(new_cellMatrix1);
char2=getResultvector(new_cellMatrix2);
char3=getResultvector(new_cellMatrix3);
char4=getResultvector(new_cellMatrix4);
char5=getResultvector(new_cellMatrix5);
char6=getResultvector(new_cellMatrix6);
char7=getResultvector(new_cellMatrix7);
char8=getResultvector(new_cellMatrix8);


% now time for chars 9-16 (:


selectIndicies2=[65 73 81 89 97 105 113 121];

new_cellMatrix9=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix10=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix11=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix12=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix13=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix14=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix15=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);
new_cellMatrix16=fillCellMatrix(hello,selectIndicies2);
selectIndicies2=pushIndicies(selectIndicies2);

selectIndicies2

char9=getResultvector(new_cellMatrix9);
char10=getResultvector(new_cellMatrix10);
char11=getResultvector(new_cellMatrix11);
char12=getResultvector(new_cellMatrix12);
char13=getResultvector(new_cellMatrix13);
char14=getResultvector(new_cellMatrix14);
char15=getResultvector(new_cellMatrix15);
char16=getResultvector(new_cellMatrix16);



% fprintf("0b");
% 
% for p=1:7
%     fprintf("%d",char9(p))
% end
% char2
% char3



char3
char15



function printChar(char)
    
fprintf("0b");
for p=1:5
    fprintf("%d",char(1,p))
end
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(2,p))
end
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(3,p))
end  
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(4,p))
end  
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(5,p))
end  
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(6,p))
end  
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(7,p))
end  
fprintf(",\n0b");
for p=1:5
    fprintf("%d",char(8,p))
end  
    fprintf("\n")
end


function resultvector = getResultvector(new_cellMatrix)
    for k=1:8
        test=new_cellMatrix{k};
        for l=1:5
        resultvector(k,l)=test(l);
        
    
        end
    
    end
    return
end
% % resultvector




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









