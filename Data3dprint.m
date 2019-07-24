function [ ] = Data3dprint( Numbersofexp )
load ExpData
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
Osram = ExpDataTo(Numbersofexp);
axis vis3d;
x = Osram(:,1);y = Osram(:,2);z =  Osram(:,3);

dt = delaunayTriangulation(x,y) ;
tri = dt.ConnectivityList ;

xi = dt.Points(:,1) ; 
yi = dt.Points(:,2) ; 
F = scatteredInterpolant(x,y,z);

zi = F(xi,yi) ;

%out = figure 
trisurf(tri,xi,yi,zi) 
axis vis3d;
grid on;
shading interp
end

