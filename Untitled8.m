%% Meyve Ver, Seti özellik çıkarımı
clear
load Veriseti
V=[];
Veriseti3=[Veriseti(:,1:end-1)];
[en,boy]=size(Veriseti);
for i=1:en
    A=Veriseti3(i,:);
    B=dct(A);
    B1=B(1:100);
    V=[V; B1];
end
V=[V Veriseti(:,end)];