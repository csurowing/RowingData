function z=plotfinaldata(trial)

%plotfinaldata(trial)
%trial is a number from 1 to 9, see documentation
%
%This script plots rowing machine mechanical data and EMG signals 
%which have been already synchronized and normalized
%
%Hanz Richter (Control, Robotics and Mechatronics Lab)
%Ton van den Bogert (Human Motion and Control Lab)
%Cleveland State University, 2016
%
% ISSUE: each raw EMG signal was normalized by removing the mean and dividing by 
% the peak absolute value, so that the normalized signal is between -1 and 1.
% Because some raw channels has a few large spikes, the normalization
% process compressed most of the signal, leaving the spikes between -1
% and 1. This can be easily fixed by manual processing.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Matrix structure:

%Column 1: time, spaced at 1 ms 
%Columns 2 through 17: EMG channels 1 through 16

%Column 18: Encoder 1 () velocity in rad/s
%Column 19: Encoder 2 () velocity in rad/s
%The above velocities coincide during the pull phase

%Column 20: Handle force in N
%Column 21: Tangential velocity of pull chain in m/s
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Process filename and variable name
filename=strcat('data',num2str(trial));

load(filename) %each filename contains a matrix called DATA

t=DATA(:,1);
%Display plots

figure(1)
plot(t,DATA(:,2));
title('EMG Channel 1')
ylabel('EMG Signal')
xlabel('Time,s')

figure(2)
plot(t,DATA(:,3));
title('EMG Channel 2')
ylabel('EMG Signal')
xlabel('Time,s')

figure(3)
plot(t,DATA(:,4));
title('EMG Channel 3')
ylabel('EMG Signal')
xlabel('Time,s')

figure(4)
plot(t,DATA(:,5));
title('EMG Channel 4')
ylabel('EMG Signal')
xlabel('Time,s')

figure(5)
plot(t,DATA(:,6));
title('EMG Channel 5')
ylabel('EMG Signal')
xlabel('Time,s')

figure(6)
plot(t,DATA(:,7));
title('EMG Channel 6')
ylabel('EMG Signal')
xlabel('Time,s')

figure(7)
plot(t,DATA(:,8));
title('EMG Channel 7')
ylabel('EMG Signal')
xlabel('Time,s')

figure(8)
plot(t,DATA(:,9));
title('EMG Channel 8')
ylabel('EMG Signal')
xlabel('Time,s')

figure(9)
plot(t,DATA(:,10));
title('EMG Channel 9')
ylabel('EMG Signal')
xlabel('Time,s')

figure(10)
plot(t,DATA(:,11));
title('EMG Channel 10')
ylabel('EMG Signal')
xlabel('Time,s')

figure(11)
plot(t,DATA(:,12));
title('EMG Channel 11')
ylabel('EMG Signal')
xlabel('Time,s')

figure(12)
plot(t,DATA(:,13));
title('EMG Channel 12')
ylabel('EMG Signal')
xlabel('Time,s')

figure(13)
plot(t,DATA(:,14));
title('EMG Channel 13')
ylabel('EMG Signal')
xlabel('Time,s')

figure(14)
plot(t,DATA(:,15));
title('EMG Channel 14')
ylabel('EMG Signal')
xlabel('Time,s')

figure(15)
plot(t,DATA(:,16));
title('EMG Channel 15')
ylabel('EMG Signal')
xlabel('Time,s')

figure(16)
plot(t,DATA(:,17));
title('EMG Channel 16')
ylabel('EMG Signal')
xlabel('Time,s')


figure(17)
subplot(2,1,1)
plot(t, DATA(:,18),t,DATA(:,19))
title('Encoder Velocities')
legend('Enc 1','Enc 2')
ylabel('Angular Velocity, rad/s')
subplot(2,1,2)
plot(t, DATA(:,21))
title('Handle Vel')
ylabel('Velocity, m/s')
xlabel('Time,s')


figure(18)
plot(t,DATA(:,20))
title('Handle Force')
ylabel('Force, N')
xlabel('Time,s')



