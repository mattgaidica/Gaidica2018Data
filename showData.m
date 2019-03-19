%load('Gaidica2019Data_20190319');

% we recorded 366 units over 30 sessions in 5 rats

% these are the rats
subjectNames = analysisConf.subjects;
% these are the neuron names based on the rat/recording wire
neuronNames = analysisConf.neurons;
% these are the session names (there are multiple units per session)
sessionNames = analysisConf.sessionNames;

% all the correct trials for unit-session 13
correctTrials_unit13 = all_trialIdInfo{13}.correct;
% all the correct trials for unit-session 13 (see also: correctIpsi)
correctTrials_contra_unit13 = all_trialIdInfo{13}.correctContra;

% all_trials: all the trial data
% all_ts: all the spike timestamps

% all_tsPeths are +/-1s peri-event timestamps for each unit-trial
% ex. of a single unit-trial at centerOut (event 4)
ts_unit13_trial32_event4 = all_tsPeths{1,13}{32,4};
figure; 
histogram(ts_unit13_trial32_event4,linspace(-1,1,1000));
ylim([0 1.2]); yticks(0);
xlim([-1 1]); xticks([-1 0 1]);
title('spike times');
xlabel('time (s)');
ylabel('spikes');

% dirSelUnitIds are the indexes for directionally selective units
% ndirSelUnitIds are the indexes for non-directionally selective units
% *you will find unit 13 in the ndirSelUnitIds array*

% primSec are the primary and secondary event-based classifications
% - NaN means the unit wasn't significantly modulated
% ex. unit 13 is a primary centerOut, secondary sideOut unit
disp(['unit 13 primary class: ',eventFieldnames{primSec(13,1)}]);
disp(['unit 13 secondary class: ',eventFieldnames{primSec(13,2)}]);

% recap: unit 13 fires a lot around centerOut/sideOut but it did not significantly determine movement direction