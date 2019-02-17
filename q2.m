% Recording own voice
%Originally sampled at 44.1kHz and digitized at 24 bits
%my_recording = audiorecorder(44100, 24, 1);
%disp('Start Recording, for 5 seconds');
%recordblocking(my_recording, 5); 
%disp('End of Recording');
% Recording done, Now saving the recording to a file
%data = getaudiodata(my_recording);
%audiowrite('hello.wav', data, 44100);

%audioinfo('sample.wav')
%[smp_data, smp_fs] = audioread('sample.wav');
[my_data, my_fs] = audioread('my_recording.wav');

% Playing the sound
%sound(my_data, my_fs);
%pause(4);
%sound(smp_data, smp_fs);
%pause(5);

% Subsampling to 24kHz, 16kHz, 8kHz, 4kHz in both the data files
subsamples = [24000, 16000, 8000, 4000];
for i = 1:4
    [p, q] = rat(subsamples(1, i)/44100);
    sub_my_data = resample(my_data, p, q);
    %sound(sub_my_data, my_fs);
    %pause(7);
    
    %sub_smp_data = resample(smp_data, p, q);
    %sound(sub_smp_data, smp_fs);
    %pause(3);
end

array = ["BIG_HALL.wav", "MEDIUM_DAMPING_CAVE.wav", "SMALL_CHURCH.wav"];
for j=1:3
    envfile = array(1, j);
    [env_data, env_fs] = audioread(envfile);
    
    result_smp = convn(my_data, env_data(:, 1));
    sound(result_smp, my_fs);
    pause(7);
    
    %result_my = convn(my_data, env_data(:, 1));
    %sound(result_my, my_fs);
    %pause(5);
end