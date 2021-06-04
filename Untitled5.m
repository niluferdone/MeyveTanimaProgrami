%Test
[dosyaAdi,dosyaYolu] = uigetfile({'*.jpg';'*.bmp';'*.png'});
I=imread(fullfile(dosyaYolu,dosyaAdi));
I1=I(:);
I1=single(I1);
A=dct(I1);
B=A(1:100);
sim(net,B)
