% This is the ranking using plurality vote method 

get_data = fopen('rankingcandidates.dat','r'); % load the data into matlab
M = textscan(get_data,'%s %s %s %s %s','Delimiter',','); % get the name in the data 

%get the initial value of the first place
HC = 0;
BS = 0;
JK = 0;
TC = 0;
DT = 0;

% let the initial value added one time as one name shows in the first place
% in these 240 data
for i = 1:240
    if M{1}{i} == 'HC'
        HC = HC + 1;
    elseif M{1}{i} == 'BS'
        BS = BS + 1;
    elseif M{1}{i} == 'JK'
        JK = JK + 1;
    elseif M{1}{i} == 'TC'
        TC = TC + 1;
    elseif M{1}{i} == 'DT'
        DT = DT + 1;
    end
end

% create these numbers as a matrix
Voters_counts = [HC,BS,JK,TC,DT];
particpent_name = {'HC','BS','JK','TC','DT'};
[maximum,index] = max(Voters_counts);
[sorted_value,ranked] = sort(Voters_counts, 'descend');

fprintf('The Plurality vote method rank five candidates in the order of %s %s %s %s %s\n',particpent_name{ranked(1)},particpent_name{ranked(2)},particpent_name{ranked(3)},particpent_name{ranked(4)},particpent_name{ranked(5)})
fprintf('With corresponding first place vote %d %d %d %d %d\n',Voters_counts(ranked(1)),Voters_counts(ranked(2)),Voters_counts(ranked(3)),Voters_counts(ranked(4)),Voters_counts(ranked(5)))
show_winner_name_text = [particpent_name{index},' wins in the election'];
disp(show_winner_name_text);
show_winner_votes_text = [particpent_name{index},' has won with maximum number of Votes in the first place: '];
%disp(show_winner_votes_text);
%disp(Voters_counts(index));









