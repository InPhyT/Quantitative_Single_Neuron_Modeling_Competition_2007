% Allows to plot the traces given in a .asc file

function plotAsc(filename)

d=importdata(filename);
plots=size(d.data,2);
UnitT=strtok(d.textdata(1), '"');
UnitI=strtok(d.textdata(2), '"');
if plots>2
  UnitV=strtok(d.textdata(3),'"'); 
end


hCur = figure;
set(hCur,'Name',filename,'NumberTitle','off');

for i=1:size(d.data,1)
 if (d.data(:, 1)>1.9)
   i
 end
end

subplot(2,1,1) , plot(d.data(:,1),d.data(:,2));
title('Current')
xlabel(UnitT);
ylabel(UnitI);

if plots == 3
  subplot(2,1,2) , plot(d.data(:,1),d.data(:,3));
  title('Voltage')
  xlabel(UnitT);
  ylabel(UnitV);
end


