% challenge A with aEif (see p.25)


cd /Users/richardnaud/Documents/Work/Data_Challenge2007/ChallengeA/test
% taking only the first relevant second

set = ['01';'02';'03';'07']
rep = ['0', '1', '2', '3'];
Nset = size(set,1);
Nrep = length(rep); % the + one account for the removed set 12
for i = 1:(Nset)*(Nrep)
    [setInd, repInd] = ind2sub([(Nset),(Nrep)],i);
    filename = [set(setInd,:),'-',rep(repInd),'.voltage'];
    spkfilename(i,:) = [set(setInd,:),'-',rep(repInd),'.spiketimes'];
    
    % load I and 
    File = feval(@load,filename);  
    Ilabel(i,:) = ['I',set(setInd,:), '_',rep(repInd)] ;
    eval([Ilabel(i,:),' = File(:,2);']);
    
    % useful labels
    spklabel(i,:) = ['spk',set(setInd,:), '_',rep(repInd)] ;
    Glabel(i,:) = ['G',set(setInd,:), '_',rep(repInd)] ;

end
        
timestep = 1/5000;
SamplingFreq = 1/timestep;

%% fixed parameters
Params.C = 72.2967;
Params.EL = -60;
Params.Nrefr = 5;
Params.Er = -44.2472;
Params.a = 0;

Params.gL = 13;
Params.Delta = .0061;
Params.VT = -37.9508;
Params.b = 36.3556;
Params.TauW = 24.6772;

%%
mkdir results
cd results
    for i = 1:(Nrep)*(Nset)
        eval([spklabel(i,:), ' = aEIF_OnlySpikes(Params,',Ilabel(i,:),',timestep*1e3);'])
        feval(@save,spkfilename(i,:),spklabel(i,:),'-ascii');
    end
 
