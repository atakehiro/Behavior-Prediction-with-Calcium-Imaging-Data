Path = uigetdir;
filelist = dir(Path);
%% 
for i = 3:length(filelist)
    load([Path,'\',filelist(i).name])
    signal = dat_roi;
    base = movmean(signal, 1000,2);
    signal2 = signal - base;
    eval(['s',num2str(i-2),' = signal2;'])
end
%%
Path = uigetdir;
filelist = dir(Path);
%% 
for j = 3:length(filelist)
    load([Path,'\',filelist(j).name])
    eval(['b',num2str(j-2),' = runrest;'])
end