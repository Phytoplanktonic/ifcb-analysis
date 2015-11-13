% Taylor 28Oct2015
%calculate cellsperml of size freactions or classifications or whatever of
%each sample. For comparing Horz vs Vert runnign in vehicle project. Is horz
%running getting correct communicaty composition or is it missing?


clear all

% dirpath = '\\sosiknas1\Lab_data\IFCB_forVehicles\IFCB102\data\2015\D20151023\';
% files = {'D20151023T191437_IFCB102'};        figtitle = {'D20151023T191437 Gui/Dun/Beads HORZ'};
% files = [files; 'D20151023T185218_IFCB102']; figtitle = [figtitle; 'D20151023T185218 Gui/Dun/Beads HORZ'];
% files = [files; 'D20151023T180105_IFCB102']; figtitle = [figtitle; 'D20151023T180105 Gui/Dun/Beads VERT'];
% files = [files; 'D20151023T161217_IFCB102']; figtitle = [figtitle; 'D20151023T161217 Dun & beads VERT']; %Dun&9um beads in FSW in lab, VERT
% files = [files; 'D20151023T152314_IFCB102']; figtitle = [figtitle; 'D20151023T152314 Dun & beads HORZ']; %Dun&9um beads in FSW in lab, VERT

%beads exp of horz vs vert do you get same concentrations? if not, if you
%run less volume when horz do you get same cellconc as vertcal? maybe just
%need to run samples more frequently as less volume?
dirpath = '\\sosiknas1\Lab_data\IFCB_forVehicles\IFCB102\';
%following files not great because didn't debubble between samples so exp is useless
%{
files = {'D20151029T193910'};           figtitle = {'5mL Vert'};            volfilt = 5;             isvert = 1;
files = [files; 'D20151029T200203'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151029T202442'];    figtitle = [figtitle; '2mL Horz'];volfilt = [volfilt; 2];  isvert = [isvert; 1];
files = [files; 'D20151029T203651'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151029T210223'];    figtitle = [figtitle; '4mL Horz'];volfilt = [volfilt; 4];  isvert = [isvert; 0];
files = [files; 'D20151029T213311'];    figtitle = [figtitle; '3mL Horz'];volfilt = [volfilt; 3];  isvert = [isvert; 0];
files = [files; 'D20151029T214652'];    figtitle = [figtitle; '2mL Horz'];volfilt = [volfilt; 2];  isvert = [isvert; 0];
files = [files; 'D20151029T215618'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151029T220128'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151029T220740'];    figtitle = [figtitle; '2mL Horz'];volfilt = [volfilt; 2];  isvert = [isvert; 0];
files = [files; 'D20151029T221754'];    figtitle = [figtitle; '3mL Horz'];volfilt = [volfilt; 3];  isvert = [isvert; 0];
files = [files; 'D20151029T223228'];    figtitle = [figtitle; '2mL Vert - immediate after Horz'];  volfilt = [volfilt; 2];  isvert = [isvert; 1];
files = [files; 'D20151029T225342'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151029T231617'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151029T232145'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
% file = 'D20151015T181337_IFCB102.adc'; %dock water horz stationary in lab
% file = 'D20151015T181337_IFCB102.adc'; %dock water horz stationary in lab
% file = 'D20151006T192518_IFCB102.adc'; %dock water vert stationary in lab
% file = 'D20151006T195148_IFCB102.adc'; %dock water vert stationary in lab
% file = 'D20151006T200900_IFCB102.adc'; %dock water horz stationary in lab
%}

%GUINARDIA 5ML
files = {'D20151112T164628'};           figtitle = {'5mL Vert'};            volfilt = 5;             isvert = 1;
files = [files; 'D20151112T170931'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T173151'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T175410'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T181728'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T184118'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T191233'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151112T193452'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151112T195712'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151112T201931'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151112T204151'];    figtitle = [figtitle; '5mL Horz'];volfilt = [volfilt; 5];  isvert = [isvert; 0];
files = [files; 'D20151112T210954'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T213214'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
files = [files; 'D20151112T215433'];    figtitle = [figtitle; '5mL Vert'];volfilt = [volfilt; 5];  isvert = [isvert; 1];
%GUINARDIA 1ML
files = [files; 'D20151112T224220'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T224924'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T225523'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T230123'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T230723'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T231706'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151112T232306'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151112T232906'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151112T233506'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151112T234106'];    figtitle = [figtitle; '1mL Horz'];volfilt = [volfilt; 1];  isvert = [isvert; 0];
files = [files; 'D20151112T235221'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151112T235821'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151113T000421'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151113T001020'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151113T001620'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];
files = [files; 'D20151113T003006'];    figtitle = [figtitle; '1mL Vert'];volfilt = [volfilt; 1];  isvert = [isvert; 1];



%what size bins do you want? For roiwidth I chose 100pix bins
bins = 0:100:1400;
sizefrac_cellconc = NaN(length(files),length(bins)-1);

fastfactor = nan(length(files),1);
runSampleFast = fastfactor;
samplevol = fastfactor;
flowrate = fastfactor;
runtime = fastfactor;
inhibittime = fastfactor;
ml_analyzed  = fastfactor;
numtriggers = fastfactor;
cellconc = fastfactor;
% exclude_small = 0;
% answer = input('Do you want to exclude smallest size fraction of cells? answer y or n"','s');
% if strcmp(answer,'y'), exclude_small = 1; end 
% clear answer
for count = 1:length(files)
    hdr = IFCBxxx_readhdr_Rob([dirpath char(files(count)) '_IFCB102.hdr']);
    adcdata = load([dirpath char(files(count)) '_IFCB102.adc']);
%     if exclude_small==1, adcdata = adcdata(adcdata(:,16)>20,:); end
%     hdrfilename(i) = {hdrdir(i).name};
    fastfactor(count) = hdr.RunFastFactor; if fastfactor(count) == 0, fastfactor(count) = 1; end
    runSampleFast(count) = hdr.runSampleFast;
    samplevol(count) = hdr.SyringeSampleVolume;
    if runSampleFast(count) > 0
        flowrate(count) = 0.25 * fastfactor(count); % ml/min
    else flowrate(count) = 0.25;
    end
    lasttriggertime = 60*samplevol(count)/flowrate(count); %sec to last trigger    
    runtime(count) = hdr.runtime;
    inhibittime(count) = hdr.inhibittime;
    sec2event2 = adcdata(2,2);
    ml_analyzed(count) = IFCB_volume_analyzed_Rob2([dirpath char(files(count)) '_IFCB102.hdr'], sec2event2);
    numtriggers(count) = length(unique(adcdata(:,1)));
    cellconc(count) = numtriggers(count)/ml_analyzed(count);
    [h] = histogram(adcdata(:,16),bins);
    sizefrac_cellconc(count,:) = h.Values./ml_analyzed(count);
    disp([num2str(count) ' of ' num2str(length(files))])
end
clear adcdata answer exp_list header lasttriggertime count hdr horz*

disp([files num2cell(cellconc) figtitle])

figure
plot(samplevol(isvert==1),cellconc(isvert==1),'b*','markersize',9)
hold on
plot(samplevol(isvert==0),cellconc(isvert==0),'r*','markersize',9)
set(gca,'xlim',[0 6])
xlabel('Sample Volume Run','fontweight','bold'); ylabel('Cell Conc (cells/ml)','fontweight','bold');
title('9um beads Run on IFCB102 Cell Concentration Vert vs Horz Runs')
legend('Vert','Horz','location',[0.5534 0.8025 0.1452 0.0814])

temp=1:31;
figure
plot(cellconc,'b*','markersize',9)
hold on
plot(temp(isvert==0),cellconc(isvert==0),'r*','markersize',9)
xlabel('Run # in Sequence','fontweight','bold'); ylabel('Cell Conc (cells/ml)','fontweight','bold');
title('9um beads Run on IFCB102 Cell Concentration Over Course of Runs')
legend('Vert','Horz','location','northwest')

figure
hold on
for count = 1:size(sizefrac_cellconc,2)
    plot(sizefrac_cellconc(:,count),'*','markersize',9)
end
xlabel('Sample Run #','fontweight','bold'); ylabel('Cell Concentration in each size bin','fontweight','bold')
title('Bin Size = 0:100:1400, Histogram: Cell Concentration for each size fraction')
if strcmp(files(1),'D20151112T164628'), 
    line([6.5 6.5],[0 450],'linewidth',2,'color','k'); 
    text(1.3,425,'Vert-5ml','fontsize',16,'fontweight','bold','color','r')
    text(7,425,'Horz-5ml','fontsize',16,'fontweight','bold','color','r')
    line([11.5 11.5],[0 450],'linewidth',2,'color','k'); 
    text(12,425,'Vert-5ml','fontsize',16,'fontweight','bold','color','r')
    line([15.5 15.5],[0 450],'linewidth',3,'linestyle','--','color','r'); 
    text(16,425,'Vert-1ml','fontsize',16,'fontweight','bold','color','r')
    line([19.5 19.5],[0 450],'linewidth',2,'color','k'); 
    text(20,425,'Horz-1ml','fontsize',16,'fontweight','bold','color','r')
    line([24.5 24.5],[0 450],'linewidth',2,'color','k'); 
    text(25,425,'Vert-1ml','fontsize',16,'fontweight','bold','color','r')
end


