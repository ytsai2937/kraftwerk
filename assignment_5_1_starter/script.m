clear; clc; close all;
fdir = fullfile(pwd,'data','coupons_new.csv');
df = readtable(fdir,"VariableNamingRule","preserve");

vname = df.Properties.VariableNames;
df.Properties.VariableNames{strcmpi(vname,"Var1")} = 'index';
df.expire_1d = strcmpi(df.expire_1d,"True");
df.is_male = strcmpi(df.is_male,"True");

% index
df1 = df(strcmpi(df.coupon,"Bar"),:);
df2 = df(strcmpi(df.coupon,"Carry out & Take away"),:);
df3 = df(strcmpi(df.coupon,"Coffee House"),:);
df4 = df(strcmpi(df.coupon,"Restaurant(20-50)"),:);
df5 = df(strcmpi(df.coupon,"Restaurant(<20)"),:);

%%
df1(df1.accept_coupon==1,:)
