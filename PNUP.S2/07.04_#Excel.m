clear
clc

kecamatan = ['Biringkanaya','Bontoala','Makassar','Mamajang','Manggala','Mariso','Panakukang','Rappocini','Sangkarrang','Tallo','Tamalanrea','Tamalate','Ujung Pandang','Ujung Tanah','Wajo','Luar Wilayah'];
odp = [63 12 50 25 96 38 98 206 2 72 63 85 96 18 9 0];
pdp = [42 12 24 15 41 23 53 54 0 29 24 40 18 8 10 10];
positif = [26 3 12 13 23 8 38 36 3 17 19 47 11 2 4 105];

plot(odp,'-go','linewidth',2,'markersize',4,'markeredgecolor','b','markerfacecolor','w');
set(gca, 'XTick', 1:16, 'XtickLabel', {'Biringkanaya','Bontoala','Makassar','Mamajang','Manggala','Mariso','Panakukang','Rappocini','Sangkarrang','Tallo','Tamalanrea','Tamalate','Ujung Pandang','Ujung Tanah','Wajo','Luar Wilayah'}, 'XtickLabelRotation', 90)
hold on
plot(pdp,'-yo','linewidth',2,'markersize',4,'markeredgecolor','b','markerfacecolor','w');
set(gca, 'XTick', 1:16, 'XtickLabel', {'Biringkanaya','Bontoala','Makassar','Mamajang','Manggala','Mariso','Panakukang','Rappocini','Sangkarrang','Tallo','Tamalanrea','Tamalate','Ujung Pandang','Ujung Tanah','Wajo','Luar Wilayah'}, 'XtickLabelRotation', 90)
plot(positif,'-ro','linewidth',2,'markersize',4,'markeredgecolor','b','markerfacecolor','w');
set(gca, 'XTick', 1:16, 'XtickLabel', {'Biringkanaya','Bontoala','Makassar','Mamajang','Manggala','Mariso','Panakukang','Rappocini','Sangkarrang','Tallo','Tamalanrea','Tamalate','Ujung Pandang','Ujung Tanah','Wajo','Luar Wilayah'}, 'XtickLabelRotation', 90)
hold off
xlabel('Kecamatan')
ylabel('Pasien')
title('COVID-19 data of Makassar City (by: Exel)')
