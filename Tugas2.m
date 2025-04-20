% Nested (Decision Making) syarat beasiswa dengan minimal IPK mahasiswa
%
% IPK = 3.7;
% gaji_ortu = 3000000;
% 
% if IPK >= 3.5
%     if gaji_ortu < 3000000
%         disp('Anda mendapat beasiswa penuh.');
%     elseif gaji_ortu <= 6000000
%         disp('Anda mendapat beasiswa sebagian.');
%     else
%         disp('Anda tidak mendapat beasiswa.');
%     end 
% else
%     disp('Maaf, Anda belum memenuhi syarat IPK untuk beasiswa.');
% end


% While(Loop) game tebak angka sederhana
% User pilih angka random 1-10
% jawaban = randi([1, 10]); 
% tebakan = 0;
%
% while tebakan ~= jawaban
%     tebakan = input('Tebak angka antara 1 dan 10: ');
%     
%     if tebakan < jawaban
%         disp('Terlalu kecil');
%     elseif tebakan > jawaban
%         disp('Terlalu besar');
%     else
%         disp('Selamat, Tebakan Anda benar');
%     end
% end