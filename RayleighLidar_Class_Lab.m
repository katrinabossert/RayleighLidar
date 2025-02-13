close all
clear all

load('lidar_photon_profile.mat');
load('vertical_time_bin.mat');

%%%Use the variables lidar_photon_profile and vertical_time_bin to complete
%%%this lab

%%%%problem 1
%alt=?



%%%problem 6
lat=65; %N 
long=-147; %W
year=2018;
day=291; 
UT_seconds=0;
Solar_UT=0;
F107=100;
F107av=100;

for i=1:length(vertical_time_bin)
    %[Tmsis rho] = atmosnrlmsise00(alt(i), lat, long, year, day, UT_seconds,Solar_UT,F107av,F107);
    %T(i)=Tmsis(2);
    %Dens(i)=rho(6); 
end

%%%Use T and Dens to complete problem 6

%%%Problem 7a
%%%You will need to use the equation for Beta Rayleigh (theta=pi) to
%%%calculate theoretical photon returns. Remember that you can use the
%%%equation with atmospheric density n_a(z) in terms of density in kg/m^3



%%%8a
%%%calculate gz for all altitudes 
%mass of earth
me=5.97219e24; %mass of the Earth (kg)
%gravitational constant
gr=6.67384e-11; %m^3/(kg*s^2)
%radius of the earth
re=6378.1e3; %m


%%%8b 
M=28.97e-3; %kg/mol
R=8.314472; %J/(mol*K)
%%%Uncomment below and choose indicies from your lidar altitude ranges that
%%%start at a seed altitude of 96km and end at 40km, additionally, choose a
%%%corresponding Tos seed temperature using MSIS at 96km
% st_altis=?; %96km
% stp_altis=?; %40km
% Tos=?; %seed temperature from MSIS

%%%%The code below is written to help get you started. You are welcome to
%%%%write your own code to calculate the temperatrues from the lidar 

% s_photons=size(lidar_photon_profile);
% count=1;
% for i=st_altis:-1:stp_altis   
%     if i==st_altis
%         Temp_Calc(count)=Tos; %define your first data point to be your seed temperature
%     else
% 
%         for j=1:s_photons(1) %this is with respect to the altitude of interest, and will change and lengthen each time i increases
%             %photons_alt(j)=?;
%         end
%         %Temp_Calc(count)=?;      
%     end
% 
%     alt_Temp_Calc(count)=alt(i); %altite profile that will match your temperature profile 
%     count=count+1; %increase the count of your index, you could also use the index i to create a new index
% end


