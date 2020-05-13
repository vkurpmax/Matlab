function varargout = TempConv3(varargin)
% TEMPCONV3 MATLAB code for TempConv3.fig
%      TEMPCONV3, by itself, creates a new TEMPCONV3 or raises the existing
%      singleton*.
%
%      H = TEMPCONV3 returns the handle to a new TEMPCONV3 or the handle to
%      the existing singleton*.
%
%      TEMPCONV3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMPCONV3.M with the given input arguments.
%
%      TEMPCONV3('Property','Value',...) creates a new TEMPCONV3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TempConv3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TempConv3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TempConv3

% Last Modified by GUIDE v2.5 13-May-2020 22:39:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TempConv3_OpeningFcn, ...
                   'gui_OutputFcn',  @TempConv3_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TempConv3 is made visible.
function TempConv3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TempConv3 (see VARARGIN)

% Choose default command line output for TempConv3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TempConv3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TempConv3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in mode_konversi.
function mode_konversi_Callback(hObject, eventdata, handles)
% hObject    handle to mode_konversi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns mode_konversi contents as cell array
%        contents{get(hObject,'Value')} returns selected item from mode_konversi


% --- Executes during object creation, after setting all properties.
function mode_konversi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mode_konversi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function celciusedit_Callback(hObject, eventdata, handles)
% hObject    handle to celciusedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of celciusedit as text
%        str2double(get(hObject,'String')) returns contents of celciusedit as a double


% --- Executes during object creation, after setting all properties.
function celciusedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to celciusedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasiledit_Callback(hObject, eventdata, handles)
% hObject    handle to hasiledit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasiledit as text
%        str2double(get(hObject,'String')) returns contents of hasiledit as a double


% --- Executes during object creation, after setting all properties.
function hasiledit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasiledit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
    celcius = str2num(get(handles.celciusedit,'string'));
    
    mode = get(handles.mode_konversi,'value');
    switch mode
        case 0
            msgbox('pilih jenis konversi');
        case 1
            msgbox('pilih jenis konversi');
        case 2
            hasil_konversi = (4/5)*celcius;
            set(handles.hasiledit,'String',strcat(num2str(hasil_konversi),' R'));
        case 3
            hasil_konversi = (9/5)*celcius + 32;
            set(handles.hasiledit,'string',strcat(num2str(hasil_konversi),' F'));
        case 4
            hasil_konversi = celcius + 273;
            set(handles.hasiledit,'string',strcat(num2str(hasil_konversi),' K'));
    end
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
    close;
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
