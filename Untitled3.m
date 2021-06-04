%% Meyve Ver, Seti özellik çýkarýmý
%%YSA için veri seti oluþturma
clear
load Veriseti
V=[];
Veriseti3=[Veriseti(:,1:end-1)];
[en,boy]=size(Veriseti);
for i=1:en
    A=Veriseti3(i,:);
    B=dct(A);
    B1=B(1:100);
    V=[V; B1];%Egitim girdileri
end
T=[];
for i=1:en
    switch Veriseti(i,end)
        case 1
            T=[T;1 0 0 0 0];
        case 2
            T=[T; 0 1 0 0 0];
        case 3
            T=[T; 0 0 1 0 0];
        case 4
            T=[T; 0 0 0 1 0];
        case 5
            T=[T; 0 0 0 0 1];
    end
end
