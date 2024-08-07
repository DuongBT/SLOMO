%%the mininum number of equations is the number of relative RF to fit, for
%%n oligomeric states, n-1 equations are required
maxn=length(I1)-5;%% this is to make sure that the last data point has 5 different time points
for i=1:maxn
k=i;
Ai = [I2(k),I3(k),I4(k),I5(k),I6(k);
    I2(k),I3(k+1),I4(k+1),I5(k+1),I6(k+1);
    I2(k+2),I3(k+2),I4(k+2),I5(k+2),I6(k+2);
    I2(k+3),I3(k+3),I4(k+3),I5(k+3),I6(k+3);
    I2(k+4),I3(k+4),I4(k+4),I5(k+4),I6(k+4)];
Bi=[-I1(k);
    -I1(k+1);
    -I1(k+2);
    -I1(k+3);
    -I1(k+4)];

    Xi=linsolve(Ai,Bi);
    display(Xi)
end