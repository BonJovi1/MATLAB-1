%[file,path] = uigetfile('sa_re_ga_ma.wav');
[input, fs] = audioread('sa_re_ga_ma.wav');
%sound(input, fs);

%time becomes twice, 30s becomes 60s
slower = resample(input, 2, 1);
%sound(slower, fs);
faster = resample(input, 1, 2);
%sound(faster, fs);

figure
plot(faster)
figure
plot(slower)
