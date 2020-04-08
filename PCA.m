clear all;close all; clc

load('input.csv')
input(input == -3) = nan;
[coef,score,latent,tsquared,explained,mu] = pca(input,'algorithm','als');


reconstructed = score*coef' + repmat(mu,5568,1);

csvwrite('pca.csv',reconstructed)

%%%%%%%each run produces different PCA components

biplot(coef(:,1:3)) %plot PCA coefficient


%biplot(coef(:,1:3),'Scores',score(:,1:3)); %plot coefficient and oberservations

numberofnoncontributingvariables = sum(latent < 1)