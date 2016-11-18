%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Data Preparation for Phonetics (HosungNam), Korea Univ
%
%                                                  Written by Kim, Wiback,
%                                                      2016. 11. 14. v1.1.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%





%% Reading Stimuli %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid_eng_vowels = fopen(...
    '/Users/KimWiback/Desktop/vowel_recording/stimuli/vowels_eng.txt', ...
    'r', 'n', 'UTF-8');
fid_kor_vowels = fopen(...
    '/Users/KimWiback/Desktop/vowel_recording/stimuli/vowels_kor.txt', ...
    'r', 'n', 'UTF-8');
eng_con = textscan(fid_eng_vowels, '%s\n');
eng_con = eng_con{1};
kor_con = textscan(fid_kor_vowels, '%s\n');
kor_con = kor_con{1};





%% Creating Stimuli Files %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fid_eng = fopen('~/Desktop/vowel_recording/stimuli/eng_con.txt', ...
    'w+', 'n', 'UTF-8');
fid_kor = fopen('~/Desktop/vowel_recording/stimuli/kor_con.txt', ...
    'w+', 'n', 'UTF-8');
fid_com = fopen('~/Desktop/vowel_recording/stimuli/all_con.txt', ...
    'w+', 'n', 'UTF-8');





%% Suffling English Stimuli %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for each_block = 1:100
    index = randperm(10);
    for each_con = 1:length(eng_con)
        fprintf(fid_eng, '%s\n', eng_con{index(each_con)});
    end
end
fclose(fid_eng);





%% Suffling Korean Stimuli %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for each_block = 1:100
    index = randperm(8);
    for each_con = 1:length(kor_con)
        fprintf(fid_kor, '%s\n', kor_con{index(each_con)});
    end
end
fclose(fid_kor);





%% Suffling All %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for each_block = 1:100
    index = randperm(10);
    for each_con = 1:length(eng_con)
        fprintf(fid_com, '%s\n', eng_con{index(each_con)});
    end
end
for each_block = 1:100
    index = randperm(8);
    for each_con = 1:length(kor_con)
        fprintf(fid_com, '%s\n', kor_con{index(each_con)});
    end
end
fclose(fid_com);