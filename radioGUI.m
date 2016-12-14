function varargout = radioGUI(varargin)
% RADIOGUI MATLAB code for radioGUI.fig
%      RADIOGUI, by itself, creates a new RADIOGUI or raises the existing
%      singleton*.
%
%      H = RADIOGUI returns the handle to a new RADIOGUI or the handle to
%      the existing singleton*.
%
%      RADIOGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RADIOGUI.M with the given input arguments.
%
%      RADIOGUI('Property','Value',...) creates a new RADIOGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before radioGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to radioGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help radioGUI

% Last Modified by GUIDE v2.5 09-Dec-2016 12:18:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @radioGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @radioGUI_OutputFcn, ...
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


% --- Executes just before radioGUI is made visible.
function radioGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to radioGUI (see VARARGIN)

% Choose default command line output for radioGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes radioGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

axes(handles.axes1)
matlabImage = imread('radio.jpg');
image(matlabImage)
axis off
axis image


% --- Outputs from this function are returned to the command line.
function varargout = radioGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set to green the current button
set(gcbo,'Backgroundcolor','g');

display('Previous');


% --- Executes on button press in pushbutton3.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set to green the current button
set(gcbo,'Backgroundcolor','g');

display('Next');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set to green the current button
set(gcbo,'Backgroundcolor','g');

display('Volume down');

% --- Executes on button press in pushbutton2.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set to green the current button
set(gcbo,'Backgroundcolor','g');

display('Volume up');

% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of togglebutton1

button_state = get(hObject,'Value');

if button_state == 1
    display('Radio on');
elseif button_state == 0
    display('Radio off');
end

