%=======================================================================================================
% This contain all the information for running main
% TEMPLATE OF THE STRUCT DATI
%=======================================================================================================
%
%  DATI= struct( 'name',              % set the name of the test 
%                'Domain',            % set the domain [x1,x2;y1,y2]
%                'exact_sol',         % set the exact solution
%                'force',             % set the forcing term
%                'grad_exact_1',      % set the first componenet of the gradient of the exact solution
%                'grad_exact_2',      % set the second componenet of the gradient of the exact solution
%                'fem',               % set finite element space
%                'nqn_1D',            % number of quadrature nodes for integrals over lines
%                'nqn_2D',            % number of quadrature nodes for integrals over elements
%                'MeshType',          % set the elements of the mesh  'TS'
%                'refinement_vector', % set the level of refinement for the grid
%                'visual_graph',      % if you want to display the graphical results ['Y','N']
%                'print_out',         % if you want to print out the results ['Y','N']
%                'plot_errors'        % you want to plot the computed errors ['Y','N']
% 
%========================================================================================================

function [Dati]=C_dati()
Dati = struct(  'domain',           [0,1],... 
               ... % Domain bounds
               'c',               10,...
               ... % Velocity of propagation
               'exact_sol',        '',...      
               ... % Definition of exact solution
               'force',            '',...  
               ... % Forcing term
               'grad_exact_1',     '',...    
               ... % Definition of exact gradient (x comp) 
               'grad_exact_2',     '',...    
               ... % Definition of exact gradient (y comp)
               'h',                 0.01,...   
               ... % step in space
               'T',                 10,...   
               ... % Max time
               'visual_graph',      'Y',...
               ... % Visualization of the solution
               'plot_errors',       'Y' ...
               ...% Compute Errors
               );
end



