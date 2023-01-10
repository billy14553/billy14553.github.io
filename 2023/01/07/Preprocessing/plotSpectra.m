function     plotSpectra(X,y)
 map = colormap();
 miny = min(y);
 maxy = max(y);
 y1 = y - min(y);
 y1 = y1/max(y1)*64;
 cor = [];
 map = colormap;
 s = size(map,1);
 for i = 1:1:size(X,1)
     j = floor(y1(i));
     if j==0 
         j=1;
     end
     plot(X(i,:),'color',map(j,:),'linewidth',1);
     hold on;
 end
 colorbar
 tk = [0,0.2,0.4,0.6,0.8,1];
 for i = 1:1:length(tk)
     num = tk(i)*(maxy-miny)+miny;
     label{i} = sprintf("%.2f",num);
 end
  cb = colorbar('Ticks',tk,...
         'TickLabels',label);
  c.Label.String = 'moisture';   
SCIPlot

