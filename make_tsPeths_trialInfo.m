tWindow = 1;
all_tsPeths = {};
all_trialIdInfo = {};
for iNeuron = 1:numel(all_ts)
    disp(num2str(iNeuron));
    trials = all_trials{iNeuron};
    all_trialIdInfo{iNeuron} = organizeTrialsById(trials);
    all_tsPeths{iNeuron} = eventsPeth(trials,all_ts{iNeuron},tWindow,eventFieldnames);
end