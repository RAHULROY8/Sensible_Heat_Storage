n = input("Enter 1 if you want to do manual Calculations and 0 for Graph Plotting :\n");
if n == 1
    Qu = input("Enter The Value of Qu in KJ/h :\n");
    Qload = 27000;
    % Dia = input("Enter The Storage Tank Diameter in metre : \n");
    % Height = input("Enter The Storage Tank Height in metre : \n");
    Dia = 1.7;
    Height = 2.1;
    Vol = (pi/4)*((Dia)^2)*Height;
    Cp = 4.195;
    RhoVCpl = 971.8*Vol*Cp;
    Mass = (((pi*Dia*Height) + ((2*pi/4)*(Dia)^2)) * 0.006*7800) + 200; 
    RhoVCpt = Mass * 0.46;
    RhoVCpe = RhoVCpl + RhoVCpt;
    r1 = Dia/2;
    r2 = r1 + 0.2;
    U11 = (r1/0.04)*log((r2/r1));
    U1 = 1/U11;
    U2 = 0.04/0.2;
    UAt = (U1*pi*Dia*Height) + (U2*2*pi/4)*(Dia)^2;
    Tli = input("Enter The Initial Temperature of Water in Celcius : \n");
    Ta = input("Enter The Ambient Temperature in Celcius : \n");
    Nm=((Qu-Qload-(UAt*3.6)*(Tli-Ta))*(exp(-(UAt*3.6)/(RhoVCpe))));
    Tl = ((Qu-Qload-Nm)/(UAt*3.6)) + Ta
else 
    Time = [08,09,10,11,12,13,14,15,16,17,18,19,20];
    y1 = [18660,37496,54890,60070,69890,70120,62205,55490,41070,19195,0,0,0];
    y2 = [49.56,50.07,51.4583,53.1078,55.2516,57.4063,59.1618,60.5784,61.2685,60.8569,59.4783,58.0988,56.7189];
    yyaxis left
    plot(Time,y1,'color','r','linewidth',2.5);
    xlabel("Time h");
    ylabel("Qu, Qload (KJ/h)");
    hold on;
    grid on;
    yyaxis right
    ylabel("Tank Water Temperature in celcius ");
    plot(Time,y2,'color','b','linewidth',2.5);
    hold on;
    grid on;
    title("Variation of Temperature wrt time and Qu Plot");
end

    