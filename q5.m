%[file,path] = uigetfile('sa_re_ga_ma.wav');
[input, fs] = audioread('sa_re_ga_ma.wav');

figure
output1 = smoothdata(input, 'gaussian');
plot(input);
plot(output1);

%moving average
figure
output2 = smoothdata(input)
plot(input);
plot(output2);

x=1:100;
figure
output3 = smoothdata(input, 'movmedian')
plot(x,input(1:100),'-o',x,output3(1:100),'-x')
legend('Original Data','Smoothed Data')

figure
output4 = smoothdata(input, 'lowess')
plot(x,input(1:100),'-o',x,output4(1:100),'-x')
legend('Original Data','Smoothed Data')

figure
output5 = smoothdata(input, 'loess')
plot(x,input(1:100),'-o',x,output5(1:100),'-x')
legend('Original Data','Smoothed Data')

figure
output6 = smoothdata(input, 'sgolay')
plot(x,input(1:100),'-o',x,output6(1:100),'-x')
legend('Original Data','Smoothed Data')