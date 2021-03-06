function createTreeView(handles, FT_Width, FT_Height)
%
% Copyright 2010, Joseph O. Deasy, on behalf of the CERR development team.
% 
% This file is part of The Computational Environment for Radiotherapy Research (CERR).
% 
% CERR development has been led by:  Aditya Apte, Divya Khullar, James Alaly, and Joseph O. Deasy.
% 
% CERR has been financially supported by the US National Institutes of Health under multiple grants.
% 
% CERR is distributed under the terms of the Lesser GNU Public License. 
% 
%     This version of CERR is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
% CERR is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
% without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
% See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with CERR.  If not, see <http://www.gnu.org/licenses/>.
    
%     Para.Rigid_Single_Modality = 'MS';
            
    Para.Rigid = 'MI';
    
    Para.Non_Rigid.OpticalFlow = 'OpticalFlow';
    Para.Non_Rigid.Demons3D = 'Demons3D';
%     Para.Non_Rigid.SymmetricDemons3D = 'SymmetricDemons';
%     Para.Non_Rigid.BSplineMethod = 'BSplineMethod';
%     Para.Non_Rigid.LevelSetMethod = 'LevelSetMethod';

    
    expFcn = createParaTree(Para, handles, [0, 1-FT_Height, FT_Width, FT_Height]);
    handles = guidata(handles.mainframe);
    set(handles.FTreeView, 'Visible', true);
    
    guidata(handles.mainframe, handles);
    
end



