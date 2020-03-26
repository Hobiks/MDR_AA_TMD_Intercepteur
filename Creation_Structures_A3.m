load Aero_TMD.mat

%% Structure Aero
Aero_TMD.Lref   = L_ref;
Aero_TMD.vAlpha = vAlfa;
Aero_TMD.vBeta  = vAlfa; % Missile 2 plans identiques
Aero_TMD.vMach  = vMach;
Aero_TMD.vAlt   = vAlt;
Aero_TMD.vBrq   = vBrq;

Aero_TMD.CA_np = CA_np';
Aero_TMD.CA_p  = CA_p';
Aero_TMD.CN    = CN(:,:,1);
Aero_TMD.CY    = CN(:,:,1);

clearvars -except *TMD*

%% Structure Propulsion

% Boost
Propu_TMD.Boost.Retard = 0; % Déclenchement à T0 simulation
Propu_TMD.Boost.Duree  = 3.26;
Propu_TMD.Boost.ISP    = 250;
Propu_TMD.Boost.Masse  = 84.8*0.4535;
Propu_TMD.Boost.Profil = 1;
Propu_TMD.Boost.D_Tuy  = 3.78*0.0254;

% Croisiere
Propu_TMD.Croisiere.Retard = 3.26; % Déclenchement après le boost
Propu_TMD.Croisiere.Duree  = 10.86;
Propu_TMD.Croisiere.ISP    = 230.4;
Propu_TMD.Croisiere.Masse  = 48.2*0.4535;
Propu_TMD.Croisiere.Profil = 1;
Propu_TMD.Croisiere.D_Tuy  = 3.78*0.0254;

%% Structure Masse/Inertie

Masse_Inertie_TMD.Masse_Init = 500*0.4535;
