classdef ARLSpectralFittingGUI_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        Franck_Condon_Lineshape_Analyser  matlab.ui.Figure
        UIAxes                          matlab.ui.control.UIAxes
        SettingsButton                  matlab.ui.control.StateButton
        FitParametersPanel              matlab.ui.container.Panel
        S_editField                     matlab.ui.control.NumericEditField
        unitlessLabel                   matlab.ui.control.Label
        S_slider                        matlab.ui.control.Slider
        cmLabel_2                       matlab.ui.control.Label
        hw_slider                       matlab.ui.control.Slider
        E_editField                     matlab.ui.control.NumericEditField
        cmLabel                         matlab.ui.control.Label
        E_slider                        matlab.ui.control.Slider
        hw1_label                       matlab.ui.control.Label
        S1_label                        matlab.ui.control.Label
        E_minus_coarse                  matlab.ui.control.Button
        E_plus_coarse                   matlab.ui.control.Button
        E_minus_fine                    matlab.ui.control.Button
        E_plus_fine                     matlab.ui.control.Button
        S_minus_coarse                  matlab.ui.control.Button
        S_plus_coarse                   matlab.ui.control.Button
        S_minus_fine                    matlab.ui.control.Button
        S_plus_fine                     matlab.ui.control.Button
        hw_minus_coarse                 matlab.ui.control.Button
        hw_plus_coarse                  matlab.ui.control.Button
        hw_minus_fine                   matlab.ui.control.Button
        hw_plus_fine                    matlab.ui.control.Button
        v05_editField                   matlab.ui.control.NumericEditField
        v05_minus_coarse                matlab.ui.control.Button
        v05_plus_coarse                 matlab.ui.control.Button
        v05_minus_fine                  matlab.ui.control.Button
        v05_plus_fine                   matlab.ui.control.Button
        cmLabel_3                       matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        v05_slider                      matlab.ui.control.Slider
        unitlessLabel_2                 matlab.ui.control.Label
        SLabel                          matlab.ui.control.Label
        S2_slider                       matlab.ui.control.Slider
        S2_editField                    matlab.ui.control.NumericEditField
        S2_minus_coarse                 matlab.ui.control.Button
        S2_plus_coarse                  matlab.ui.control.Button
        S2_minus_fine                   matlab.ui.control.Button
        S2_plus_fine                    matlab.ui.control.Button
        cmLabel_4                       matlab.ui.control.Label
        Label_3                         matlab.ui.control.Label
        hw2_slider                      matlab.ui.control.Slider
        hw2_editField                   matlab.ui.control.NumericEditField
        hw2_minus_coarse                matlab.ui.control.Button
        hw2_plus_coarse                 matlab.ui.control.Button
        hw2_minus_fine                  matlab.ui.control.Button
        hw2_plus_fine                   matlab.ui.control.Button
        Whatsthis_FixButton             matlab.ui.control.StateButton
        hw_editField                    matlab.ui.control.NumericEditField
        E00CheckBox                     matlab.ui.control.CheckBox
        SCheckBox                       matlab.ui.control.CheckBox
        S2CheckBox                      matlab.ui.control.CheckBox
        v05CheckBox                     matlab.ui.control.CheckBox
        hwCheckBox                      matlab.ui.control.CheckBox
        hw2CheckBox                     matlab.ui.control.CheckBox
        E0Label                         matlab.ui.control.Label
        E0_bounds_stateButton           matlab.ui.control.StateButton
        v05_bounds_stateButton          matlab.ui.control.StateButton
        S1_bounds_stateButton           matlab.ui.control.StateButton
        hw1_bounds_stateButton          matlab.ui.control.StateButton
        S2_bounds_stateButton           matlab.ui.control.StateButton
        hw2_bounds_stateButton          matlab.ui.control.StateButton
        S1CustomBoundsPanel             matlab.ui.container.Panel
        S1_upperbound_editBox           matlab.ui.control.NumericEditField
        UpperLimitLabel_3               matlab.ui.control.Label
        S1_lowerbound_editBox           matlab.ui.control.NumericEditField
        LowerLimitLabel_3               matlab.ui.control.Label
        Bothvaluesmustbewithin03Label   matlab.ui.control.Label
        hw1CustomBoundsPanel            matlab.ui.container.Panel
        hw1_upperbound_editBox          matlab.ui.control.NumericEditField
        UpperLimitLabel_4               matlab.ui.control.Label
        hw1_lowerbound_editBox          matlab.ui.control.NumericEditField
        LowerLimitLabel_4               matlab.ui.control.Label
        Bothvaluesmustbewithin04000cmLabel  matlab.ui.control.Label
        S2CustomBoundsPanel             matlab.ui.container.Panel
        S2_upperbound_editBox           matlab.ui.control.NumericEditField
        UpperLimitLabel_5               matlab.ui.control.Label
        S2_lowerbound_editBox           matlab.ui.control.NumericEditField
        LowerLimitLabel_5               matlab.ui.control.Label
        Bothvaluesmustbewithin03Label_2  matlab.ui.control.Label
        hw2CustomBoundsPanel            matlab.ui.container.Panel
        hw2_upperbound_editBox          matlab.ui.control.NumericEditField
        UpperLimitLabel_6               matlab.ui.control.Label
        hw2_lowerbound_editBox          matlab.ui.control.NumericEditField
        LowerLimitLabel_6               matlab.ui.control.Label
        Bothvaluesmustbewithin04000cmLabel_2  matlab.ui.control.Label
        HiddenPannel                    matlab.ui.container.Panel
        Applicationisinsinglemode       matlab.ui.control.Label
        ResetAxesButton                 matlab.ui.control.Button
        PopOutButton                    matlab.ui.control.Button
        ResetParametersButton           matlab.ui.control.Button
        ExportDataButton                matlab.ui.control.StateButton
        CalculationsPanel               matlab.ui.container.Panel
        ClearButton                     matlab.ui.control.Button
        CalculateButton                 matlab.ui.control.Button
        Ges_TextBoxLabel                matlab.ui.control.Label
        ChromaticityCoordinateLabel     matlab.ui.control.Label
        Ges_Panel                       matlab.ui.container.Panel
        chromaticity_Panel              matlab.ui.container.Panel
        chromaticity_TextBox            matlab.ui.control.Label
        Ges_TextBox                     matlab.ui.control.Label
        PredictedColorLabel             matlab.ui.control.Label
        Color_Panel                     matlab.ui.container.Panel
        CIEPopoutStateButton            matlab.ui.control.StateButton
        DisabledLabel                   matlab.ui.control.Label
        RLabel                          matlab.ui.control.Label
        ImportDataButton                matlab.ui.control.StateButton
        ImportDataOptionsPanel          matlab.ui.container.Panel
        ImportDataOptionsLabel          matlab.ui.control.Label
        ExcitationButton                matlab.ui.control.Button
        EmissionButton                  matlab.ui.control.Button
        Optimizationhasbeenrunnings     matlab.ui.control.Label
        PlotfitFunctionButton           matlab.ui.control.Button
        PlottingLampLabel               matlab.ui.control.Label
        PlottingLamp                    matlab.ui.control.Lamp
        OptimizeFitButton               matlab.ui.control.Button
        OptimizingLampLabel             matlab.ui.control.Label
        OptimizingLamp                  matlab.ui.control.Lamp
        SelectedSpectrumLabel           matlab.ui.control.Label
        ExportDataOptionsPanel          matlab.ui.container.Panel
        ExportDataOptionsLabel          matlab.ui.control.Label
        FCLSAPanel                      matlab.ui.container.Panel
        FigureButton                    matlab.ui.control.Button
        ParametervaluesButton           matlab.ui.control.Button
        SpectrumdatapointsButton        matlab.ui.control.Button
        FitdatapointsButton             matlab.ui.control.Button
        ColorAnalysisPanel              matlab.ui.container.Panel
        ColorValuesButton               matlab.ui.control.Button
        ChromaticityDiagramButton       matlab.ui.control.Button
        SelectSpectrumPanel             matlab.ui.container.Panel
        SelectSpectrumLabel             matlab.ui.control.Label
        CancelOptimizationButton        matlab.ui.control.Button
        SelectSpectrumtoFitButton       matlab.ui.control.StateButton
        FixParameterPanel               matlab.ui.container.Panel
        FixParameterLabel               matlab.ui.control.Label
        InfoButton                      matlab.ui.control.StateButton
        ClearDataButton                 matlab.ui.control.Button
        InfoPanel                       matlab.ui.container.Panel
        AboutUsTabGroup                 matlab.ui.container.TabGroup
        AboutUsTab                      matlab.ui.container.Tab
        ARLSpectralFittingv10Panel      matlab.ui.container.Panel
        AboutLabel                      matlab.ui.control.Label
        WhyFCLSALabel                   matlab.ui.control.Label
        PointsofContactLabel            matlab.ui.control.Label
        PointsofContactBodyLabel        matlab.ui.control.Label
        AcknowledgmentLabel             matlab.ui.control.Label
        AcknowledgmentBodyLabel         matlab.ui.control.Label
        Image                           matlab.ui.control.Image
        CitedFunctionsTab               matlab.ui.container.Tab
        MathWorksFileExchangePanel      matlab.ui.container.Panel
        DanzLabel                       matlab.ui.control.Label
        EganLabel                       matlab.ui.control.Label
        DErricoLabel                    matlab.ui.control.Label
        GreeneLabel                     matlab.ui.control.Label
        OtherPanel                      matlab.ui.container.Panel
        CIELabel                        matlab.ui.control.Label
        BambhaLabel                     matlab.ui.control.Label
        LiteratureReferencesTab         matlab.ui.container.Tab
        ZanoniLabel                     matlab.ui.control.Label
        MurtazaLabel                    matlab.ui.control.Label
        DossingLabel                    matlab.ui.control.Label
        ClaudeLabel                     matlab.ui.control.Label
        LiteratureReferencesLabel       matlab.ui.control.Label
        ZanoniLabel_2                   matlab.ui.control.Label
        ZanoniLabel_3                   matlab.ui.control.Label
        SampleSpectraTab                matlab.ui.container.Tab
        OrganicDye910diphenylanthraceneinTOLPanel  matlab.ui.container.Panel
        LoadEmissionData_292_organic    matlab.ui.control.Button
        LoadEmissionData_77_organic     matlab.ui.control.Button
        LoadExcitationData_292_organic  matlab.ui.control.Button
        IridiumDyeIrpbtacacin2MeTHFPanel  matlab.ui.container.Panel
        LoadEmissionData_292_Ir         matlab.ui.control.Button
        LoadExcitationData_292_Ir       matlab.ui.control.Button
        LoadEmissionData_77_Ir          matlab.ui.control.Button
        RutheniumDyeRubpyClin31vvEtOHMeOHPanel  matlab.ui.container.Panel
        LoadExcitationData_292_Ru       matlab.ui.control.Button
        LoadEmissionData_292_Ru         matlab.ui.control.Button
        LoadEmissionData_77_Ru          matlab.ui.control.Button
        SelectIntersectPanel            matlab.ui.container.Panel
        SelectPointDialogue             matlab.ui.control.Label
        PointSelectedButton             matlab.ui.control.Button
        SettingsPanel                   matlab.ui.container.Panel
        TabGroup                        matlab.ui.container.TabGroup
        GeneralTab                      matlab.ui.container.Tab
        GeneralSettingsPanel            matlab.ui.container.Panel
        Allowmultipleimportedspectra    matlab.ui.control.CheckBox
        RetrieveimportfiletitleCheckBox  matlab.ui.control.CheckBox
        FigureSettingsLabel             matlab.ui.control.Label
        ShowdatapeaklabelsCheckBox      matlab.ui.control.CheckBox
        ShowlegendongraphCheckBox       matlab.ui.control.CheckBox
        Formatfiguresforpublicationbeforeex  matlab.ui.control.CheckBox
        IntensityNormalizationLabel     matlab.ui.control.Label
        NormalizespectratohighCheckBox  matlab.ui.control.CheckBox
        SelectpeakfornormalizationButton  matlab.ui.control.Button
        Requiresatleastonespectrum      matlab.ui.control.Label
        RenormalizeallspectraButton     matlab.ui.control.Button
        YAxisLimitsButtonGroup          matlab.ui.container.ButtonGroup
        SetYAxismaximumvalueto1Button   matlab.ui.control.RadioButton
        ShowalldatapeaksautoButton      matlab.ui.control.RadioButton
        YAxisSettingsLabel              matlab.ui.control.Label
        ShowTips                        matlab.ui.control.CheckBox
        Correctforshift_checkbox        matlab.ui.control.CheckBox
        XAxisTab                        matlab.ui.container.Tab
        XAxisSettingsButtonGroup        matlab.ui.container.ButtonGroup
        ManuallyadjustXaxisandfitlim    matlab.ui.control.RadioButton
        AutofitXaxisandfitlimitsButton  matlab.ui.control.RadioButton
        XAxisAutofitLabel               matlab.ui.control.Label
        Panel                           matlab.ui.container.Panel
        Xmax_editField                  matlab.ui.control.NumericEditField
        XmaximumSliderLabel             matlab.ui.control.Label
        XmaximumSlider                  matlab.ui.control.Slider
        cmLabel_5                       matlab.ui.control.Label
        Xmin_editField                  matlab.ui.control.NumericEditField
        XminimumSliderLabel             matlab.ui.control.Label
        XminimumSlider                  matlab.ui.control.Slider
        cmLabel_6                       matlab.ui.control.Label
        Xres_editField                  matlab.ui.control.NumericEditField
        XresolutionSliderLabel          matlab.ui.control.Label
        XresolutionSlider               matlab.ui.control.Slider
        cmLabel_7                       matlab.ui.control.Label
        nmLabel                         matlab.ui.control.Label
        nmLabel_2                       matlab.ui.control.Label
        Wave_switch                     matlab.ui.control.Switch
        Xaxiswithfit_checkBox           matlab.ui.control.CheckBox
        Autofit_transparent_panel       matlab.ui.container.Panel
        XAxisvaluesarebeingcontroll     matlab.ui.control.Label
        FitTab                          matlab.ui.container.Tab
        FittingFunctionSettingsPanel    matlab.ui.container.Panel
        AutomaticallycalculateCoefficient  matlab.ui.control.CheckBox
        Automaticallyplotfit            matlab.ui.control.CheckBox
        E00ButtonGroup                  matlab.ui.container.ButtonGroup
        FullFCSLAfitButton              matlab.ui.control.RadioButton
        XRuleButton                     matlab.ui.control.RadioButton
        E0CalculationLabel              matlab.ui.control.Label
        Intersectionofemission          matlab.ui.control.RadioButton
        percentRuleDropDown             matlab.ui.control.DropDown
        SumLimitsLabel                  matlab.ui.control.Label
        SumUpperLimitSpinnerLabel_7     matlab.ui.control.Label
        SumUpperLimitSpinner            matlab.ui.control.Spinner
        SumLowerLimitSpinnerLabel       matlab.ui.control.Label
        SumLowerLimitSpinner            matlab.ui.control.Spinner
        Sum2LowerLimitSpinnerLabel      matlab.ui.control.Label
        Sum2LowerLimitSpinner           matlab.ui.control.Spinner
        Sum2UpperLimitSpinnerLabel      matlab.ui.control.Label
        Sum2UpperLimitSpinner           matlab.ui.control.Spinner
        Sum1LowerHidden                 matlab.ui.control.Label
        Sum1UpperHidden                 matlab.ui.control.Label
        Mode_switch                     matlab.ui.control.Switch
        SumHiders                       matlab.ui.container.Panel
        SumHiderLabel                   matlab.ui.control.Label
        OptimizationTab                 matlab.ui.container.Tab
        OptimizationSettingsPanel       matlab.ui.container.ButtonGroup
        SpecifymaxvalueofiterationsCheckBox  matlab.ui.control.CheckBox
        MaxIter_EditField               matlab.ui.control.NumericEditField
        TolFun_EditField                matlab.ui.control.NumericEditField
        SpecifytermtoleranceFunCheckBox  matlab.ui.control.CheckBox
        TolX_EditField                  matlab.ui.control.NumericEditField
        SpecifytermtoleranceXCheckBox   matlab.ui.control.CheckBox
        RobustFitOptionsDropDownLabel   matlab.ui.control.Label
        RobustFitOptionsDropDown        matlab.ui.control.DropDown
        ShowallGoFStatisticsCheckBox    matlab.ui.control.CheckBox
        OptimizationMethod_Switch       matlab.ui.control.Switch
        Custombounds_checkBox           matlab.ui.control.CheckBox
        EndTriggerLabel                 matlab.ui.control.Label
        ResetCustomBoundsButton         matlab.ui.control.Button
        Savecommandline_checkbox        matlab.ui.control.CheckBox
        DataWeightingTab                matlab.ui.container.Tab
        OptimizationSettingsPanel_2     matlab.ui.container.ButtonGroup
        Thresholdweight_EditField       matlab.ui.control.NumericEditField
        WeightMultiplier13Label_2       matlab.ui.control.Label
        Thresholdintensity_EditField    matlab.ui.control.NumericEditField
        ThresholdIntensity01Label_2     matlab.ui.control.Label
        ThresholdweightingCheckBox      matlab.ui.control.CheckBox
        ThresholdWeightingLabel         matlab.ui.control.Label
        Thresholddataweighting_panel    matlab.ui.container.Panel
        Dataweightingisnotavailable_2   matlab.ui.control.Label
        ExtremaWeight_EditField         matlab.ui.control.NumericEditField
        WeightMultiplier120Label        matlab.ui.control.Label
        WeightextremaCheckBox           matlab.ui.control.CheckBox
        ExtremaWeightingLabel           matlab.ui.control.Label
        Numberofpoints_EditField        matlab.ui.control.NumericEditField
        Numberofweightedpointssurroundingextrema115Label  matlab.ui.control.Label
        Fillsalientpoints_checkBox      matlab.ui.control.CheckBox
        Extremadataweighting_panel      matlab.ui.container.Panel
        Dataweightingisnotavailable_3   matlab.ui.control.Label
        CalculationsTab                 matlab.ui.container.Tab
        CalculationsSettingsButtonGroup  matlab.ui.container.ButtonGroup
        KButton_298                     matlab.ui.control.RadioButton
        KButton_77                      matlab.ui.control.RadioButton
        KButton_Other                   matlab.ui.control.RadioButton
        AutomaticallycalculateGs        matlab.ui.control.CheckBox
        Temp_EditField                  matlab.ui.control.NumericEditField
        IncludeGsandCIEondataexport     matlab.ui.control.CheckBox
        AutomaticallycalculateCIE       matlab.ui.control.CheckBox
        GsUnitsDropDownLabel            matlab.ui.control.Label
        GesUnitsDropDown                matlab.ui.control.DropDown
        multiCIECheckBox                matlab.ui.control.CheckBox
        Enablecolor_checkBox            matlab.ui.control.CheckBox
        ColorAnalysisLabel              matlab.ui.control.Label
        WhitePointIlluminantLabel       matlab.ui.control.Label
        WhitePoint_DropDown             matlab.ui.control.DropDown
        Experimental_temp_label         matlab.ui.control.Label
        FreeEnergyoftheExcitedStateLabel  matlab.ui.control.Label
        GoFLabel                        matlab.ui.control.Label
        Whatsthis_GoFButton             matlab.ui.control.StateButton
        GoFStatisticsPanel              matlab.ui.container.Panel
        GoFStatisticsLabel              matlab.ui.control.Label
        CIESelectPanel                  matlab.ui.container.Panel
        CIESlectedLabel                 matlab.ui.control.Label
        DisplayDiagram_StateButton      matlab.ui.control.StateButton
        ExportValuesButton              matlab.ui.control.Button
        SelectSpectra_ScrollablePanel   matlab.ui.container.Panel
        E0CustomBoundsPanel             matlab.ui.container.Panel
        E0_upperbound_editBox           matlab.ui.control.NumericEditField
        UpperboundLabel                 matlab.ui.control.Label
        E0_lowerbound_editBox           matlab.ui.control.NumericEditField
        LowerboundLabel                 matlab.ui.control.Label
        Bothvaluesmustbewithin040000cmLabel  matlab.ui.control.Label
        v05CustomBoundsPanel            matlab.ui.container.Panel
        v05_upperbound_editBox          matlab.ui.control.NumericEditField
        UpperboundLabel_2               matlab.ui.control.Label
        v05_lowerbound_editBox          matlab.ui.control.NumericEditField
        LowerboundLabel_2               matlab.ui.control.Label
        Bothvaluesmustbewithin05000cmLabel  matlab.ui.control.Label
        PointSelectedPanel              matlab.ui.container.Panel
        PointSelectedDialogue           matlab.ui.control.Label
        ReselectButton                  matlab.ui.control.Button
        ContinueButton                  matlab.ui.control.Button
    end

%     Points of contact:
%     Wiliam R. Roberts ÿ wrrobert@buffalo.edu
%     Ryan M. O'Donnell, Ph.D. ÿ ryan.m.odonnell12.civ@mail.mil

       
    properties (Access = private)
%         changable parameter values
        E_value = 20000;
        hw_value = 1400;
        S_value = 1;
        v05_value = 1000;
        hw2_value = 700;
        S2_value = 1;
        
%         changable x-axis settings
        Xmin = 11000;
        Xmax = 33500;
        Xres = 50;
        
%         changable experimental temperature
        T_value = 298;
        
%         static original parameter values
        E_value_original = 20000;
        hw_value_original = 1400;
        S_value_original = 1;
        v05_value_original = 1000;
        hw2_value_original = 700;
        S2_value_original = 1;
        
%         static orginal x-axis settings
        Xmin_original = 11000;
        Xmax_original = 33500;
        Xres_original = 50;
        
%         static original temperature
        T_value_original = 298;
        
%         used to keep track of the fit and loaded data
        fitPlotted = false;
        dataplotted = table(0, 0, 0, 0, 0, 'VariableNames', {'filename', 'fullFile', 'scatter', 'normalpeakheight', 'emission'});
        selectedfile = {0, 0, 0, 0};

%         x- and y-data used to calculate the fit function, among other
%         things
        xToFit_number = 0;
        yToFit_number = 0;
        xToFit_length = 0;
        yToFit_length = 0;
        
%         Properties used to keep track of settings
        isdouble = false;
        wave = "Wavenumber";
        autoplot = true;
        normalize = true;
        multipleGraphs = false;
        showpeaks = true;
        pubformat = true;
        showlegend = false;
        fittodata = true;
        autocalc = false;
        autoCIE = false;
        exportcalc = true;
        metadata = true;
        tightconstraints = true;
        autodeterm = true;
        
        Ges_units = 'cm';
        E0method = 'fclsa';
        multiCIE = true;
        ciespectra = {};
        peaks = 0;
        cieCoord = "";
        rgbValue1 = "";
        rgbValue255 = "";
        hexValue = "";
        
        diaryfile = "";
        
%         Changable sum upper and lower limits for the fit function
        Sum1upper = 5;
        Sum1lower = 0;
        Sum2upper = 5;
        Sum2lower = 0;
        
%         Static original sum upper and lower limits for the fit function
        Sum1upper_original = 5;
        Sum1Lower_original = 0;
        Sum2upper_original = 5;
        Sum2lower_original = 0; 
        
%         manage popped-out figure
        activefigure = 0; 
        
%         used when selecting a point on the graph
        intersectingspectra = [];
        select = '';
        upperbound = 0;
        lowerbound = 0;
        percentrule = 0;
        
%         Properties used to keep track of optimization settings
        weightmultiplier = 1.2;
        weightthreshold = 0.1;
        
        optmethod = 'LS';

        fixed = {};
        
        maxIter = 40;
        TolFun = 1e-6;
        TolX = 1e-6;
        robust = 'off';
        showgof = true;
        showgofstore = true;
        
%         keeps track of the chromaticity diagram
        chromchart = 0;
    end
    
    methods (Access = private)
%         function used to select or load a data file to import, calls
%         processdata
        function loaddata(app, fileToOpen, emission, toplot, normalpeakheight, E00)
%             choose a file desination of load given file
            delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint'));
            if isequal(string(fileToOpen), string(0))
                [filename,filedir] = uigetfile({'*.txt;*.csv;*.xls;*.xlsx'},'','Multiselect','on');
                fullFile = strcat(filedir, filename);
            else
                fullFile = string(fileToOpen); 
            end 
            
%             handles multi-select
            if isequal(string(class(fullFile)), "cell")
                app.Allowmultipleimportedspectra.Value = true;
                app.multipleGraphs = true;
                for k = 1:length(filename)
                    [~, filename, filetype] = fileparts(string(fullFile(k)));
                    if isequal(filetype, 'txt')
                        yourData = dlmread(fullFile(k), ' ', 2, 0);
                        xAxis = yourData(1:2:end, :);
                        adjustedEmission = yourData(2:2:end, :);
                    else 
                        yourData = readmatrix(string(fullFile(k)), 'Range', 'A:B');
                        try
                            if ~isequal(string(class(round(max(yourData(:,2))))), 'double') || isempty(round(max(yourData(:,1))))
                                error('');
                            end
                        catch
                            yourData = table2array(readtable(fullFile, 'HeaderLines', 1, 'Delimiter', ','));
                            newarray = zeros(size(yourData,1), 2);
                            for i = 1:size(yourData,1)
                                split = strsplit(yourData{i,1}, ',');
                                newarray(i,:) = [str2double(string(split(1))), str2double(string(split(2)))];
                            end
                            yourData = newarray;
                        end
                        xAxis = yourData(:,1);
                        adjustedEmission = yourData(:,2);
                    end
                    
                    processdata(app, xAxis, adjustedEmission, filename, fullFile(k), emission, normalpeakheight, toplot, E00);
                end
            elseif ~isempty(fullFile)
                [~, filename, filetype] = fileparts(string(fullFile));
                if isequal(filetype, 'txt')
                    yourData = dlmread(fullFile, ' ', 2, 0);
        
                    xAxis = yourData(1:2:end, :);
                    adjustedEmission = yourData(2:2:end, :);
                else 
                    yourData = readmatrix(fullFile, 'Range', 'A:B');
                    try
                        if ~isequal(string(class(round(max(yourData(:,2))))), 'double') || isempty(round(max(yourData(:,1))))
                            error('')
                        end
                    catch 
                        yourData = table2array(readtable(fullFile, 'HeaderLines', 1, 'Delimiter', ','));
                        disp(yourData)
                        newarray = zeros(size(yourData,1), 2);
                        for i = 1:size(yourData,1)
                            split = strsplit(yourData{i,1}, ',');
                            newarray(i,:) = [str2double(string(split(1))), str2double(string(split(2)))];
                        end
                        yourData = newarray;
                    end
                    
                    xAxis = yourData(:,1);
                    adjustedEmission = yourData(:,2);
                end
                
                processdata(app, xAxis, adjustedEmission, filename, fullFile, emission, normalpeakheight, toplot, E00);
            end
        end
        
        
%         function called by loaddata, processes (conversion to
%         wavenumber/wavelength) and records data, calls plotdata if
%         necessary
        function processdata(app, xAxis, yAxis, filename, filewithpath, emission, normalpeakheight, toplot, E00)
            if startsWith(filename, "Em:")
                emission = true;
            elseif startsWith(filename, "Ex:")
                emission = false;
            end
            
            if ~startsWith(filename, ["Em:", "Ex:"])
                if emission
                    filename = strcat("Em: ", filename);
                else
                    filename = strcat("Ex: ", filename);
                end
            end
            
%             record data in both wavenumber and wavelength
            inWavenumber = false;
            if max(xAxis) > 2000
                inWavenumber = true;
            end
            
            sortedTable = sortrows(table(xAxis, yAxis));
            sortedTable = sortedTable(~any(ismissing(sortedTable),2),:);
            
            xAxisToPlot = sortedTable{:,1};
            yAxisToPlot = sortedTable{:,2};
            
            if app.Correctforshift_checkbox.Value
                yAxisToPlot = yAxisToPlot - min(yAxisToPlot);
            end
            
            if app.normalize
                yAxisToPlot = yAxisToPlot ./ max(yAxisToPlot);
                yAxisToPlot = yAxisToPlot ./ normalpeakheight;
            end

            if ~inWavenumber
                app.xToFit_length = xAxisToPlot;
                app.yToFit_length = yAxisToPlot;
                
                yAxisToPlot = yAxisToPlot .* (xAxisToPlot .^ 2);
                xAxisToPlot = 10000000 ./ xAxisToPlot;
                
                if app.normalize
                    yAxisToPlot = yAxisToPlot ./ max(yAxisToPlot);
                    yAxisToPlot = yAxisToPlot ./ normalpeakheight;
                end
                
                sortedTable = sortrows(table(xAxisToPlot, yAxisToPlot));
                
                app.xToFit_number = sortedTable{:,1};
                app.yToFit_number = sortedTable{:,2};
            elseif inWavenumber
                app.xToFit_number = xAxisToPlot;
                app.yToFit_number = yAxisToPlot;
                
                xAxisToPlot = 10000000 ./ xAxisToPlot;
                yAxisToPlot = yAxisToPlot ./ (xAxisToPlot .^ 2);
                
                if app.normalize
                    yAxisToPlot = yAxisToPlot ./ max(yAxisToPlot);
                    yAxisToPlot = yAxisToPlot ./ normalpeakheight;
                end
                
                sortedTable = sortrows(table(xAxisToPlot, yAxisToPlot));
                
                app.xToFit_length = sortedTable{:,1};
                app.yToFit_length = sortedTable{:,2};
            end
            
            app.selectedfile = {filename, filewithpath, emission, normalpeakheight};
            app.SelectedSpectrumLabel.Text = ["Spectrum selected for fitting is ", filename];
            
            if isequal(app.wave, 'Wavelength')
                xAxisToPlot = app.xToFit_length;
                yAxisToPlot = app.yToFit_length;
            else
                xAxisToPlot = app.xToFit_number;
                yAxisToPlot = app.yToFit_number;
            end
            
%             adjust x-axis to fit data
            if app.fittodata
                x_max = max(xAxisToPlot);
                app.Xmax = round(x_max);
                app.Xmax_editField.Value = round(x_max);
                app.XmaximumSlider.Value = x_max;
                
                x_min = min(xAxisToPlot);
                app.Xmin = round(x_min);
                app.Xmin_editField.Value = round(x_min);
                app.XminimumSlider.Value = x_min;
                set(app.UIAxes, 'XLimMode', 'auto');
            end
            
%             resets other parameter values
            app.v05_editField.Value = app.v05_value_original;
            app.v05_slider.Value = app.v05_value_original;
            app.v05_value = app.v05_value_original;
            
            app.S_editField.Value = app.S_value_original;
            app.S_slider.Value = app.S_value_original;
            app.S_value = app.S_value_original;
            
            app.S2_editField.Value = app.S2_value_original;
            app.S2_slider.Value = app.S2_value_original;
            app.S2_value = app.S2_value_original;
            
            app.hw_editField.Value = app.hw_value_original;
            app.hw_slider.Value = app.hw_value_original;
            app.hw_value = app.hw_value_original;
            
            app.hw2_editField.Value = app.hw2_value_original;
            app.hw2_slider.Value = app.hw2_value_original;
            app.hw2_value = app.hw2_value_original;
            
%             peak finding
            minDistance = 300;
            
            if isequal(app.wave, "Wavelength")
                minDistance = 5;
            end
            
            [pks, locs] = findpeaks(app.yToFit_number, app.xToFit_number, 'MinPeakDistance', minDistance, 'MinPeakProminence', 0.018);
            app.peaks = [pks, locs];
            
            if isequal(app.E0method, "fclsa")
                Eval = round(max(locs));
                app.E_slider.Value = Eval;
                app.E_editField.Value = Eval;
                app.E_value = Eval;
            end
            
            if length(pks) > 1 && emission
                sortedlocs = flip(sort(locs));
                
                distarray = zeros([1 (length(sortedlocs)-1)]);
                for i=1:(length(sortedlocs)-1)
                    distarray(i) = sortedlocs(i) - sortedlocs(i+1);
                end
                
                value = round(sum(distarray) ./ length(distarray));
                
                app.hw_value = value;
                app.hw_editField.Value = value;
                app.hw_slider.Value = value;
                
                app.hw2_value = value ./ 2;
                app.hw2_editField.Value = value ./ 2;
                app.hw2_slider.Value = value ./ 2;
            end
            
            if toplot
                plotdata(app, xAxisToPlot, yAxisToPlot, filename, filewithpath, emission, normalpeakheight, E00);
            end
            
            resetBounds(app);
            
%             reset color analysis values
            resetColor(app);
            if app.autoCIE
                calculateCIEsingle(app);
            end
        end
        

%         function called by processdata, if applicable. Takes processed
%         data and adds to UIAxes
        function plotdata(app, xAxisToPlot, yAxisToPlot, filename, filewithpath, emission, normalpeakheight, E00)
%             clears other spectra
            if ismember(filename, string(app.dataplotted.filename))
                delete(findobj(app.UIAxes, 'DisplayName', filename));
                delete(findobj(app.UIAxes, 'Tag', filename));
                app.dataplotted(filename, :) = [];
            end
            
            if ~app.multipleGraphs && height(app.dataplotted) > 0
                delete(findobj(app.UIAxes,'Type','scatter'));
                delete(findobj(app.UIAxes, 'Type', 'text'));
                
                app.dataplotted(2:height(app.dataplotted), :) = [];
            end
            
%             plot spectrum
            s = scatter(app.UIAxes, flip(xAxisToPlot), flip(yAxisToPlot),'DisplayName', filename, 'Tag', 'Showonlegend');
            
            if app.metadata && height(app.dataplotted) <= 2
                app.UIAxes.Title.String = filename;
            end
            
            if ~emission
                s.Marker = 'd';
            end
            
%             display peaks, if desired
            if app.showpeaks
                if isequal(app.wave, "Wavelength")
                    minDistance = 5;
                else
                    minDistance = 300;
                end
                [pks, locs] = findpeaks(yAxisToPlot, xAxisToPlot, 'MinPeakDistance', minDistance, 'MinPeakProminence', 0.018);
                for pk=1:length(pks)
                    if isequal(app.wave, 'Wavelength')
                        msg = [strcat('\leftarrow', strcat(string(round(locs(pk)))," nm")); strcat("   ", strcat(string(round(10000000./locs(pk))), " cmÿ¹"))];
                    else
                        msg = [strcat('\leftarrow', strcat(string(round(locs(pk)))," cmÿ¹")); strcat("   ", strcat(string(round(10000000./locs(pk))), " nm"))];
                    end
                    text(app.UIAxes, locs(pk), pks(pk), msg, 'Color', [0.65,0.65,0.65], "FontName", "Arial", 'Tag', filename);
                end
                set(findobj(app.UIAxes, 'Type', 'Text'), 'Visible', 'on'); 
            else
                set(findobj(app.UIAxes, 'Type', 'Text'), 'Visible', 'off'); 
            end
            
%             records data to table
            app.dataplotted = [app.dataplotted; {filename, filewithpath, s, normalpeakheight, emission}];
            app.dataplotted.Properties.RowNames = app.dataplotted.filename;
            
%             adjusts graph based on number of loaded spectra
            if height(app.dataplotted) > 2
                app.showlegend = true;
                makelegend(app)
                if app.metadata
                    app.UIAxes.Title.String = 'Relative Intensity vs. Wavenumber';
                end
                app.ShowlegendongraphCheckBox.Value = true;
                app.ShowlegendongraphCheckBox.Enable = 'off';
            elseif isequal(height(app.dataplotted), 2)
                app.SelectpeakfornormalizationButton.Enable = 'on';
                app.RenormalizeallspectraButton.Enable = 'on';
            end
            
            if E00
                 E00calcchanged(app);
            end
            
            changeCIEicon(app)
        end

        
%         function called by plotdata. Formats and, if applicable, reveals
%         legend on UIAxes
        function makelegend(app)
            lgd = legend(app.UIAxes);
            lgd.FontSize = 10;
            lgd.FontName = 'Arial';
            lgd.TextColor = [0.65,0.65,0.65];
            lgd.EdgeColor = [0.65,0.65,0.65];
            lgd.Title.String = 'Legend';
            lgd.Title.FontName = 'Arial Rounded MT Bold';
            lgd.NumColumnsMode = 'manual';
            lgd.NumColumns = 1;
            lgd.Interpreter = 'none';
            
            if app.showlegend
                lgd.Visible = 'on';
            else
                lgd.Visible = 'off';
            end
        end
        
            
%         function called by select spectrum button. Loads selected data
%         spectrum
        function selectspectrum(app, fname)
            app.SelectSpectrumPanel.Visible = 'off';
            app.SelectSpectrumtoFitButton.Enable = 'off';
            
            selectedrow = app.dataplotted(fname, :);
            loaddata(app, selectedrow.fullFile, true, false, selectedrow.normalpeakheight, true);
            
            app.SelectSpectrumtoFitButton.Enable = 'on';
        end
        
        
%         function called when Optimize Fit is chosen. Calls the built-in
%         MATLAB fit function
        function LSoptimize(app)
%             loads and constrains data to x-axis
            xToFit = app.xToFit_number;
            yToFit = app.yToFit_number;
            if ~app.fittodata
                lower = app.Xmin;
                upper = app.Xmax;
                for i=length(xToFit):1
                    if ~(xToFit(i) >= lower && xToFit(i) <= upper)
                        xToFit(i) = [];
                        yToFit(i) = [];
                    end
                end
            end
            
%             initializes start points, parameters to optimize, and bounds
            delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint'));
            if ~app.isdouble
                b = [app.E_value, app.hw_value, app.S_value, app.v05_value];
                if app.Custombounds_checkBox.Value
                    lb = [app.E0_lowerbound_editBox.Value, app.hw1_lowerbound_editBox.Value, app.S1_lowerbound_editBox.Value, app.v05_lowerbound_editBox.Value];
                    ub = [app.E0_upperbound_editBox.Value, app.hw1_upperbound_editBox.Value, app.S1_upperbound_editBox.Value, app.v05_upperbound_editBox.Value];
                else
                    lb = [0, 0, 0, 0];
                    ub = [40000, 4000, 3, 5000];
                end
                
%             creates function to optimize
                sumone = app.Sum1lower:app.Sum1upper;
                sumtwo = app.Sum2lower:app.Sum2upper;
                
                anonlinfit = @(E, hw, S, v05, x)linfit(E, hw, S, v05, '', '', x, sumone, sumtwo);
            else
                b = [app.E_value, app.hw_value, app.S_value, app.v05_value, app.hw2_value, app.S2_value];
                if app.Custombounds_checkBox.Value
                    lb = [app.E0_lowerbound_editBox.Value, app.hw1_lowerbound_editBox.Value, app.S1_lowerbound_editBox.Value, app.v05_lowerbound_editBox.Value, app.hw2_lowerbound_editBox.Value, app.S2_lowerbound_editBox.Value];
                    ub = [app.E0_upperbound_editBox.Value, app.hw1_upperbound_editBox.Value, app.S1_upperbound_editBox.Value, app.v05_upperbound_editBox.Value, app.hw2_upperbound_editBox.Value, app.S2_upperbound_editBox.Value];
                else
                    lb = [0, 0, 0, 0, 0, 0];
                    ub = [40000, 4000, 3, 5000, 4000, 3];
                end
                
%             creates function to optimize
                sumone = app.Sum1lower:app.Sum1upper;
                sumtwo = app.Sum2lower:app.Sum2upper;
                
                anonlinfit = @(E, hw, S, v05, hw2, S2, x)linfit(E, hw, S, v05, hw2, S2, x, sumone, sumtwo);
            end
            
%             fixes parameters
            problem = app.fixed;
            for i=1:length(problem)
                probvar = problem{i};
                if isequal(probvar, 'E')
                    lb(1) = b(1);
                    ub(1) = b(1);
                elseif isequal(probvar, 'hw1')
                    lb(2) = b(2);
                    ub(2) = b(2);   
                elseif isequal(probvar, 'S1')
                    lb(3) = b(3);
                    ub(3) = b(3); 
                elseif isequal(probvar, 'v05')
                    lb(4) = b(4);
                    ub(4) = b(4); 
                elseif isequal(probvar, 'hw2')
                    msgbox(string(app.isdouble));
                    if app.isdouble
                        lb(5) = b(5);
                        ub(5) = b(5); 
                    end
                elseif isequal(probvar, 'S2')
                    if app.isdouble
                        lb(6) = b(6);
                        ub(6) = b(6); 
                    end
                end
            end
            
%             threshold weighting
            w = ones(length(yToFit), 1);
            if app.ThresholdweightingCheckBox.Value
                multiplier = app.weightmultiplier;
                threshold = app.weightthreshold;
                for l=1:length(yToFit)
                    if yToFit(l)>threshold
                        w(l) = multiplier;
                    end
                end
            end
            
%             extrema weighting
            delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint'));
            if app.WeightextremaCheckBox.Value
                [~, pkidx] = findpeaks(app.yToFit_number, app.xToFit_number, 'MinPeakDistance', 50, 'MinPeakProminence', 0.018);
                [~, vlidx] = findpeaks(1 - app.yToFit_number, app.xToFit_number, 'MinPeakDistance', 50, 'MinPeakProminence', 0.018);
                
                numpoints = round(app.Numberofpoints_EditField.Value ./ 2);
                wght = app.ExtremaWeight_EditField.Value;
                color = get(findobj(app.UIAxes, 'DisplayName', app.selectedfile{1}), 'CData');
                fillpoints = app.Fillsalientpoints_checkBox.Value;
                for l=1:length(pkidx)
                    i = find(app.xToFit_number==pkidx(l));
                    w(i) = wght;
                    if fillpoints
                        scatter(app.UIAxes, app.xToFit_number(i), app.yToFit_number(i), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                    end
                    for k=1:numpoints
                        w(i-k) = wght;
                        w(i+k) = wght;
                        if fillpoints
                            scatter(app.UIAxes, app.xToFit_number(i-k), app.yToFit_number(i-k), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                            scatter(app.UIAxes, app.xToFit_number(i+k), app.yToFit_number(i+k), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                        end
                    end
                end
                for l=1:length(vlidx)
                    i = find(app.xToFit_number==vlidx(l));
                    w(i) = wght;
                    if fillpoints
                        scatter(app.UIAxes, app.xToFit_number(i), app.yToFit_number(i), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                    end
                    for k=1:numpoints
                        w(i-k) = wght;
                        w(i+k) = wght;
                        if fillpoints
                            scatter(app.UIAxes, app.xToFit_number(i-k), app.yToFit_number(i-k), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                            scatter(app.UIAxes, app.xToFit_number(i+k), app.yToFit_number(i+k), 'filled', 'MarkerFaceColor', color, 'Tag', 'Highlightedpoint', 'HandleVisibility','off');
                        end
                    end
                end
            end
            
            modelfun = fittype(anonlinfit);
            [mdl, gof] = fit(xToFit, yToFit, modelfun, 'StartPoint', b, 'Weights', w, 'Lower', lb, 'Upper', ub,  'Display', 'iter', 'MaxIter',  app.maxIter, 'TolFun', app.TolFun, 'TolX', app.TolX, 'Robust', app.robust);
            x = coeffvalues(mdl);
            
            app.E_value = round(x(1));
            app.E_editField.Value = round(x(1));
            app.E_slider.Value = round(x(1));

            app.hw_value = round(x(2));
            app.hw_editField.Value = round(x(2));
            app.hw_slider.Value = round(x(2));
           
            app.S_value = round(x(3), 3, 'significant');
            app.S_editField.Value = round(x(3), 3, 'significant');
            app.S_slider.Value = round(x(3), 3, 'significant');
            
            app.v05_value = round(x(4));
            app.v05_editField.Value = round(x(4));
            app.v05_slider.Value = round(x(4));
           
            if app.isdouble
                app.hw2_value = round(x(5));
                app.hw2_editField.Value = round(x(5));
                app.hw2_slider.Value = round(x(5));
               
                app.S2_value = round(x(6), 3, 'significant');
                app.S2_editField.Value = round(x(6), 3, 'significant');
                app.S2_slider.Value = round(x(6), 3, 'significant');
            end
            drawnow;
            
%             replot, display GoF stats
            plotfit(app);
            drawnow;
            
            ar2 = num2str(gof.adjrsquare, 4);
            sse = num2str(gof.sse, 4);
            dfe = num2str(gof.dfe, 4);
            rmse = num2str(gof.rmse, 4);
            
            app.GoFLabel.Text = ['adj. R² = ', ar2, newline, '    SSE = ', sse, newline, '    DFE = ', dfe, newline, ' RMSE = ', rmse];
            
            if app.showgof
                app.GoFLabel.Visible = 'on';
                if app.ShowTips.Value
                    app.Whatsthis_GoFButton.Visible = 'on';
                end
            else
                app.GoFLabel.Visible = 'off';
                app.Whatsthis_GoFButton.Visible = 'off';
            end
            
            
            function I = linfit(E, hw, S, v05, hw2, S2, V, sumone, sumtwo)
                if isequal(hw2, '')
                    I = 0;
                    for n=sumone
                        I = I + (((E - n .* hw) ./ E) .^ 3) .* ((S .^ n) ./ factorial(n)) .* exp(-4 .* log(2) .* ((V - E + n .* hw) ./ v05) .^2);
                    end
                else
                    I = 0;
                    for two=sumtwo
                        for one=sumone
                            I = I + (((E - one .* hw - two .* hw2) ./ E) .^ 4) .* ((S .^ one) ./ factorial(one)) .* ((S2 .^ two) ./ factorial(two)) .* exp(-4 .* log(2) .* ((V - E + one .* hw + two .* hw2) ./ v05) .^2);
                        end
                    end
                end
            end
        end
        

        
        function Simoptimize(app)
%             load and constrain data by x-axis
            xToFit = app.xToFit_number;
            yToFit = app.yToFit_number;
            if ~app.fittodata
                lower = app.Xmin;
                upper  = app.Xmax;
                for i=length(xToFit):1
                    if ~(xToFit(i) >= lower && xToFit(i) <= upper)
                        xToFit(i) = [];
                        yToFit(i) = [];
                    end
                end
            end
            
%             initializes start points, parameters to optimize, and bounds
            delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint'));
            if ~app.isdouble
                b = [app.E_value, app.hw_value, app.S_value, app.v05_value];
                if app.Custombounds_checkBox.Value
                    lb = [app.E0_lowerbound_editBox.Value, app.hw1_lowerbound_editBox.Value, app.S1_lowerbound_editBox.Value, app.v05_lowerbound_editBox.Value];
                    ub = [app.E0_upperbound_editBox.Value, app.hw1_upperbound_editBox.Value, app.S1_upperbound_editBox.Value, app.v05_upperbound_editBox.Value];
                else
                    lb = [0, 0, 0, 0];
                    ub = [40000, 4000, 3, 5000];
                end
            else
                b = [app.E_value, app.hw_value, app.S_value, app.v05_value, app.hw2_value, app.S2_value];
                if app.Custombounds_checkBox.Value
                    lb = [app.E0_lowerbound_editBox.Value, app.hw1_lowerbound_editBox.Value, app.S1_lowerbound_editBox.Value, app.v05_lowerbound_editBox.Value, app.hw2_lowerbound_editBox.Value, app.S2_lowerbound_editBox.Value];
                    ub = [app.E0_upperbound_editBox.Value, app.hw1_upperbound_editBox.Value, app.S1_upperbound_editBox.Value, app.v05_upperbound_editBox.Value, app.hw2_upperbound_editBox.Value, app.S2_upperbound_editBox.Value];
                else
                    lb = [0, 0, 0, 0, 0, 0];
                    ub = [40000, 4000, 3, 5000, 4000, 3];
                end
            end
            
%             fixes parameters
            problem = app.fixed;
            for i=1:length(problem)
                probvar = problem{i};
                if isequal(probvar, 'E')
                    lb(1) = b(1);
                    ub(1) = b(1);
                elseif isequal(probvar, 'hw1')
                    lb(2) = b(2);
                    ub(2) = b(2);   
                elseif isequal(probvar, 'S1')
                    lb(3) = b(3);
                    ub(3) = b(3); 
                elseif isequal(probvar, 'v05')
                    lb(4) = b(4);
                    ub(4) = b(4); 
                elseif isequal(probvar, 'hw2')
                    msgbox(string(app.isdouble));
                    if app.isdouble
                        lb(5) = b(5);
                        ub(5) = b(5); 
                    end
                elseif isequal(probvar, 'S2')
                    if app.isdouble
                        lb(6) = b(6);
                        ub(6) = b(6); 
                    end
                end
            end
            
%             creates function to optimize
            sumone = app.Sum1lower:app.Sum1upper;
            sumtwo = app.Sum2lower:app.Sum2upper;
            
            anonlinefit = @(x)linefit(x, xToFit, yToFit, sumone, sumtwo);
            
%             customizes and performsoptimization
            opts = optimset('fminsearch');
            opts.Display = 'iter';
            opts.TolX = app.TolX;
            opts.TolFun = app.TolFun;
            opts.MaxIter = app.maxIter;
            x = fminsearchbnd(anonlinefit, b, lb, ub, opts);
            
%             reassigns parameter values
            app.E_value = round(x(1));
            app.E_editField.Value = round(x(1));
            app.E_slider.Value = round(x(1));

            app.hw_value = round(x(2));
            app.hw_editField.Value = round(x(2));
            app.hw_slider.Value = round(x(2));
           
            app.S_value = round(x(3), 3, 'significant');
            app.S_editField.Value = round(x(3), 3, 'significant');
            app.S_slider.Value = round(x(3), 3, 'significant');
            
            app.v05_value = round(x(4));
            app.v05_editField.Value = round(x(4));
            app.v05_slider.Value = round(x(4));
           
            if app.isdouble
                app.hw2_value = round(x(5));
                app.hw2_editField.Value = round(x(5));
                app.hw2_slider.Value = round(x(5));
               
                app.S2_value = round(x(6), 3, 'significant');
                app.S2_editField.Value = round(x(6), 3, 'significant');
                app.S2_slider.Value = round(x(6), 3, 'significant');
            end
            
            plotfit(app);
            
%             functino used to model FCLSA
            function Idif = linefit(x, V, ydata, sumone, sumtwo)
                E = x(1);
                hw = x(2);
                S = x(3);
                v05 = x(4);
                
                if isequal(length(x), 4)
                    I = 0;
                    for n=sumone
                        I = I + (((E - n .* hw) ./ E) .^ 3) .* ((S .^ n) ./ factorial(n)) .* exp(-4 .* log(2) .* ((V - E + n .* hw) ./ v05) .^2);
                    end
                elseif isequal(length(x), 6)
                    hw2 = x(5);
                    S2 = x(6);
                    
                    I = 0;
                    for two=sumtwo
                        for one=sumone
                            I = I + (((E - one .* hw - two .* hw2) ./ E) .^ 4) .* ((S .^ one) ./ factorial(one)) .* ((S2 .^ two) ./ factorial(two)) .* exp(-4 .* log(2) .* ((V - E + one .* hw + two .* hw2) ./ v05) .^2);
                        end
                    end
                end
                
                Idif = sum((I - ydata).^2);
            end
        end

        
        
%         Called when export>Figure is chosen. Copies UIAxes to temporary
%         figure, and saves the temporary figure to the designated file
%         locaiton
        function exportFigure(app)
            if ~app.fitPlotted && height(app.dataplotted) == 1
                msgbox("No data to export");
            else
%                 choose file destination
                filter = {'*.eps'; '*.jpg'; '*.pdf'; '*.png'; '*.*'};
                [file, path] = uiputfile(filter, 'Select a destination for your graph export', 'graph_export_file');
                fullFile = strcat(path, file);
                [~, ~, ext] = fileparts(fullFile);
                
                if ~isequal(string(fullFile), '')
    %                 copy UIAxes to another figure
                    exportFig = figure('Name', 'tempfig');
                    copyUIAxes(app.UIAxes, exportFig);
        
    %                 format for publication
                    if app.pubformat
                        ax1 = gca;
                        ax1.XColor = [0.00,0.00,0.00];
                        ax1.YColor = [0.00,0.00,0.00];
                        ax1.PlotBoxAspectRatio = [1.4 1 1];
                        ax1.FontName = 'Arial';
                        ax1.FontSize = 8;
                        ax1.Title.String = '';
                        ax1.Box = 'off';
                        ax1.Units = 'normalized';
                        ax1.YMinorTick = 'off';
                        ax1.XMinorTick = 'off';
                        ax1.LineWidth = 1;
                        
                        t = findobj(ax1, 'Type', 'text');
                        for i=1:length(t)
                            t(i).FontName = 'Arial';
                            t(i).Color = [0,0,0];
                            t(i).FontSize = 8;
                        end
                        
                        lgd = legend(ax1);
                        lgd.FontSize = 8;
                        lgd.TextColor = [0, 0, 0];
                        lgd.FontName = 'Arial';
                        lgd.Visible = get(legend(app.UIAxes), 'Visible');
                        lgd.EdgeColor = [0,0,0];
                        lgd.LineWidth = 0.5;
                        
                        ax2 = axes(exportFig,'Position', ax1.Position,...
                           'XAxisLocation','top', 'YAxisLocation','right',...
                           'Color','none', 'XColor',[0.00,0.00,0.00],'YColor',[1.00,1.00,1.00], ...
                           'FontName', 'Arial', 'FontSize', 8, ...
                           'Units', 'normalized', 'PlotBoxAspectRatio', [1.4, 1, 1], ...
                           'YMinorTick', 'off', 'XMinorTick', 'off', 'YTick', []);
                        ax2.XLim = get(ax1, 'XLim');
                        
                        secondaxislimits = round(10000000 ./ get(ax1, 'XLim'));
                        if isequal(app.wave, "Wavelength")
                            ax2.XLabel.String = "Wavenumber (×10ÿ cm-1)";
                            secondaxisticks = 1000*ceil(secondaxislimits(2)/1000):1000:1000*floor(secondaxislimits(1)/1000);
                            if length(secondaxisticks) > 6
                                secondaxisticks = unique([secondaxisticks(1), secondaxisticks(ceil(end/10)), secondaxisticks(ceil(end/6)), secondaxisticks(ceil(end/2)), secondaxisticks(end)]);
                            end
                            ax2.Title.String = 'Relative Intensity vs. Wavelength';
                            ax2.XTick = flip(10000000 ./ secondaxisticks);
                            ax2.XTickLabel = flip(string(secondaxisticks ./ 10000));
                        else
                            ax1.XDir = 'reverse';
                            ax1.XLabel.String = "Wavenumber (cm-1)";
                            ax2.XDir = 'reverse';
                            ax2.XLabel.String = "Wavelength (nm)";
                            secondaxisticks = 50*ceil(secondaxislimits(2)/50):50:50*floor(secondaxislimits(1)/50);
                            if length(secondaxisticks) > 6
                                secondaxisticks = unique([secondaxisticks(1), secondaxisticks(ceil(end/10)), secondaxisticks(ceil(end/6)), secondaxisticks(ceil(end/2)), secondaxisticks(end)]);
                            end
                            ax2.Title.String = 'Relative Intensity vs. Wavenumber';
                            ax2.XTick = flip(10000000 ./ secondaxisticks);
                            ax2.XTickLabel = flip(string(secondaxisticks));
                        end
                        
                        ax2.TitleFontSizeMultiplier = 1.3;
                        ax2.LineWidth = 1;
                    end
                    
    %                 saves to file destination in chosen format
                    ext = ext(2:end);
                    if isequal(ext, 'eps')
                        ext = 'epsc';
                    end
                    saveas(exportFig, fullFile, ext);
                
                delete(exportFig);
                end
            end
        end
        
        
%         Called when export>Fit parameter values is chosen. Copies parameter and, if
%         applicable, calculation values to a file of the chosen format in
%         the designated file location
        function exportValues(app)
%             choose file destination
            filter = {'*.csv'; '*.txt'; '*.dat'; '*.xls'; '*.xlsx'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your parameter data export', 'params_export_file');
            fullFile = strcat(path, file);
            
            if ~isequal(string(fullFile), '')
    %             creates columns for export table
                E = string(app.E_value);
                hw = string(app.hw_value);
                S = string(app.S_value);
                v05 = string(app.v05_value);
                
                calculateenergy(app);
                
                if ~app.isdouble
                    Parameter = ["E0"; "delta v1/2"; "hw"; "S"];
                    Value = [E; v05; hw; S];
                    Unit = ["cm-1"; "cm-1"; "cm-1"; "unitless"];
                    Description = ["Energy quantity, or 0-0 energy gap"; "Full width at half-maximum"; "Quantum spacing"; "Electron-vibrational coupling constant, or Huang-Rhys factor"];
                else
                    hw2 = string(app.hw2_value);
                    S2 = string(app.S2_value);
    
                    Parameter = ["E00"; "delta v1/2"; "hw1"; "S1"; "hw2"; "S2"];
                    Value = [E; v05; hw; S; hw2; S2];
                    Unit = ["cm-1"; "cm-1"; "cm-1"; "unitless"; "cm-1"; "unitless"];
                    Description = ["Energy quantity, or 0-0 energy gap"; "Full width at half-maximum"; "Quantum spacing (1)"; "Electron-vibrational coupling constant, or Huang-Rhys factor (1)"; "Quantum spacing (2)"; "Electron-vibrational coupling constant, or Huang-Rhys factor (2)"];
                end
                
    %             adds free energy to table, if desired
                if app.exportcalc
                    Parameter = [Parameter; strcat("delta G(ES)")];
                    Value = [Value; app.Ges_TextBox.Text];
                    unit = app.Ges_units;
                    if isequal(unit, 'cm')
                        unit = 'cm-1';
                    end
                    Unit = [Unit; unit];
                    Description = [Description; "Free energy of the excited state"];
                end
    
    %            save table to file destination
                exportTable = table(Parameter, Value, Unit, Description);
                writetable(exportTable, fullFile);
            end
        end
        
%         Exports calculated color values
        function exportColor(app)
%             choose file destination
            filter = {'*.csv'; '*.txt'; '*.dat'; '*.xls'; '*.xlsx'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your parameter data export', 'color_export_file');
            fullFile = strcat(path, file);
            
            if ~isequal(string(fullFile), '')
    %             create data table
                calculateCIEsingle(app);
                
                Parameter = ["Chromaticity Coordinate"; "CIE Coordinate"];
                Value = [app.chromaticity_TextBox.Text; app.cieCoord];
                Description = ["Chromaticity Coordinate"; "CIE 1931 XYZ"];
               
    %             adds color prediction, if desired
                if app.Enablecolor_checkBox.Value
                    Parameter = [Parameter; "Predicted RGB Value (0-1)"; "Predicted RGB Value (0-255)"; "Predicted Hex Value"];
                    Value = [Value; app.rgbValue1; app.rgbValue255; app.hexValue];
                    Description = [Description; "Predicted color of sample, approximated by RGB(0-1)"; "Predicted color of sample, approximated by RGB(0-255)"; "Predicted color of sample, approximated Hex Color Value"];
                end
                
    %             save table to file destination
                exportTable = table(Parameter, Value, Description);
                writetable(exportTable, fullFile);
            end
        end
        
        
        function exportChromaticity(app)
%             choose file desintation
            filter = {'*.eps'; '*.jpg'; '*.pdf'; '*.png'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your graph export', 'chromaticity_diagram_export_file');
            fullFile = strcat(path, file);
            [~, ~, ext] = fileparts(fullFile);
            
            if ~isequal(string(fullFile), '')
    %             save chromaticity diagram
                calculateCIEsingle(app);
                
                if ~isequal(app.chromchart, 0)
                    ext = ext(2:end);
                    if isequal(ext, 'eps')
                        ext = 'epsc';
                    end
                    saveas(app.chromchart, fullFile, ext);
                end
    
                app.chromchart.Visible = app.CIEPopoutStateButton.Value;
            end
        end
        
        
%         Called when export>Spectrum data is chosen. Copies the
%         currently-loaded x- and y-data to a file of the chosen format in
%         the designated location
        function exportSpectrum(app)
%             choose file destination
            filter = {'*.csv'; '*.txt'; '*.dat'; '*.xls'; '*.xlsx'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your fit data points export', 'spectrum_export_file');
            fullFile = strcat(path, file);
            
            if ~isequal(string(fullFile), '')
    %             creates export table
                if isequal(app.wave, 'Wavelength')
                    Wavelength = app.xToFit_length;
                    Intensity = app.yToFit_length;
                    exportTable = table(Wavelength, Intensity, 'VariableNames', {'Wavelength', 'Intensity'});
                else
                    Wavenumber = app.xToFit_number;
                    Intensity = app.yToFit_number;
                    exportTable = table(Wavenumber, Intensity, 'VariableNames', {'Wavenumber', 'Intensity'});
                end
                
    %             saves table to file destination
                writetable(exportTable, fullFile);
            end
        end
        
        
%         Called when export>Fit data points is chosen. Calculates y-values
%         based on the currently chosen parameter values and x-range and
%         increment
        function exportFitPoints(app)
%             choose file destination
            filter = {'*.csv'; '*.txt'; '*.dat'; '*.xls'; '*.xlsx'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your fit data points export', 'fit_export_file');
            fullFile = strcat(path, file);
            
            if ~isequal(string(fullFile), '')
    %             calculate and tabulate export fit data points
                V = app.Xmin:app.Xres:app.Xmax;
                
                if isequal(app.wave, 'Wavelength')
                    Wavelength = (10000000 ./ V).';
                    Intensity = round(lineshape(app, Wavelength), 5, 'significant');
                    exportTable = table(Wavelength, Intensity, 'VariableNames', {'Wavelength', 'Intensity'});
                else
                    Wavenumber = V.';
                    Intensity = round(lineshape(app, Wavenumber), 5, 'significant');
                    exportTable = table(Wavenumber, Intensity, 'VariableNames', {'Wavenumber', 'Intensity'});
                end
                
    %             save data table to file destination
                writetable(exportTable, fullFile);
            end
        end
        
        
%         export multiple chromaticity coordinates at once 
        function exportCoords(app)
%             choose file destination
            filter = {'*.csv'; '*.txt'; '*.dat'; '*.xls'; '*.xlsx'; '*.*'};
            [file, path] = uiputfile(filter, 'Select a destination for your fit data points export', 'chromaticity_export_file');
            fullFile = strcat(path, file);
            
            if ~isequal(string(fullFile), '')
    %             calculate values to export
                [chrom_coords, cie_coords, files, RGB1, RGB255, Hex] = calculateCIEmulti(app);
                
    %             tabulate values
                if app.Enablecolor_checkBox.Value
                    exportTable = table(files, chrom_coords, cie_coords, RGB1, RGB255, Hex, 'VariableNames', {'Filename', 'Chromaticity_Coordinate', 'CIE_Coordinate', 'RGB_0_1', 'RGB_0_255', 'Hex'});
                else
                    exportTable = table(files, chrom_coords, cie_coords, 'VariableNames', {'File', 'Chromaticity_Coordinate', 'CIE_Coordinate'});
                end
                
    %             export table to file destination
                writetable(exportTable, fullFile);
            end
        end
        
        
%         Called when Plot Fit button is pressed. Calls lineshape function
%         and plots the returned values vs its inputs
        function plotfit(app)
%             signal plotting in progress
            app.PlottingLamp.Color = '#34e363';
            app.PlotfitFunctionButton.Enable = 'off';
            drawnow
            
%             delete fit if plotted
            if app.fitPlotted
                delete(findobj(app.UIAxes,'Type','line'));
            end
            
%             initialize x-axis range
            if app.fittodata && ~(isequal(app.xToFit_number, 0) || isequal(app.xToFit_number, 0))
                V = min(app.xToFit_number):app.Xres:max(app.xToFit_number);
            else
                V = app.Xmin:app.Xres:app.Xmax;
            end
            
%             calculate modeled intensities
            I = lineshape(app, V);
            
%             convert if in wavelength
            if isequal(app.wave, "Wavelength")
                V = 10000000 ./ V;
                I = I ./ (V .^ 2);
            end
            
%             normalize to match modeled spectrum
            activefile = app.selectedfile;
            if app.normalize
                I = I ./ max(I);
                if ~isequal(activefile{4}, 0)
                    I = I ./ activefile{4};
                end
            end
            
%             plot data points
            plot(app.UIAxes, V, I, "Color", "#1cfffb", 'DisplayName', 'Fit Function');
            app.fitPlotted = true;
            
            if app.autodeterm
                calcdeterm(app);
            end
            
            app.Ges_TextBox.Text = '';
            if app.autocalc
                calculateenergy(app);
            end
            
            app.PlotfitFunctionButton.Enable = 'on';
            app.PlottingLamp.Color = '#797a80';
        end
        
        
%         Function called by each parameter increment button
        function changevalue(app, param, slider, editfield, amount)
            try
                if isequal(param, 'E')
                    app.E_value = app.E_value + amount;
                elseif isequal(param, 'hw')
                    app.hw_value = app.hw_value + amount;
                elseif isequal(param, 'S')
                    app.S_value = app.S_value + amount;
                elseif isequal(param, 'v05')
                    app.v05_value = app.v05_value + amount;
                elseif isequal(param, 'hw2')
                    app.hw2_value = app.hw2_value + amount;
                elseif isequal(param, 'S2')
                    app.S2_value = app.S2_value + amount;
                end
                slider.Value = slider.Value + amount;
                editfield.Value = editfield.Value + amount;

                if app.autoplot
                    plotfit(app);
                end
            catch
            end
            
        end

        
%         Function called to calculate the free energy of the excited state
%         from parameter values
        function calculateenergy(app)
%             calculate value using the equation below
            v05 = app.v05_value;
            E = app.E_value;
            k = 0.69508;
            T = app.T_value;
            
            freeEnergy = E + ((v05 .^ 2) ./ (16 .* k .* T .* log(2)));
            
%             convert to desired units
            if isequal(app.Ges_units, 'eV') 
                freeEnergy = freeEnergy ./ 8065.73;
            elseif isequal(app.Ges_units, 'J')
                freeEnergy = freeEnergy ./ (5.03445e22);
            end

%             display results
            stringenergy = num2str(freeEnergy, 3);
            app.Ges_TextBox.Text = stringenergy;
        end
        
        
%         Function called to calculate and plot the CIE coordinate of the
%         loaded data spectrum
        function calculateCIEsingle(app)
%             ensure there is data to analyze
            if ~isequal(string(app.xToFit_length), '0') && ~isequal(string(app.yToFit_length), '0')
%                 prepare chromaticity diagram in new figure
                delete(findobj('Name', 'Chromaticity Diagram'));
                fig = figure('Name', 'Chromaticity Diagram', 'NumberTitle', 'off');
                fig.Visible = 'off';
                app.chromchart = fig;
                ax = axes(fig);
                plotChromaticity('Parent', ax);
                hold(ax, 'on');
                
%                 different handling for emission and excitation spectra,
%                 both call other functions to get CIE and RGB values
                if app.selectedfile{3}
                    [x, y] = CIEcalc(app.xToFit_length, app.yToFit_length);
                    Y = 1;
                    X = (Y ./ y) .* x;
                    Z = (Y ./ y) .* (1 - x - y);
                else
                    cie = sampleColor(app.selectedfile{2});
                    X = cie(1);
                    Y = cie(2);
                    Z = cie(3);

                    x = X/sum(cie);
                    y = Y/sum(cie);
                end
                
                maxval = max([X, Y, Z]);
                X = X ./ maxval;
                Y = Y ./ maxval;
                Z = Z ./ maxval;
                
                rgb = double(xyz2rgb([x, y, 1-x-y], 'OutputType', 'uint8', 'WhitePoint', app.WhitePoint_DropDown.Value)) ./ 260;

%                 display results
                app.Color_Panel.BackgroundColor = rgb;
                app.cieCoord = strcat('[', string(X), ', ', string(Y), ', ', string(Z), ']');
                app.rgbValue1 = strcat('[', string(rgb(1)), ', ', string(rgb(2)), ', ', string(rgb(3)), ']');
                app.hexValue = rgb2hex(rgb);
                rgb = round(rgb .* 255);
                app.rgbValue255 = strcat('[', string(rgb(1)), ', ', string(rgb(2)), ', ', string(rgb(3)), ']');
                
                app.chromaticity_TextBox.Text = string('[' + string(x) + ', ' + string(y) + ']');
                scatter(ax, x, y, 'filled', "MarkerFaceColor", 'w', 'MarkerEdgeColor', 'k');
                text(ax, x, y, strcat('   [', string(x), ', ', string(y), ']'));
            else
                msgbox("No data to run. Try again once you've loaded something.");
            end
        end
        
%         calculate CIE and reated values for multiple spectra at once
        function [chrom_coords, cie_coords, files, RGB1, RGB255, Hex] = calculateCIEmulti(app)
%             ensures there is data present to analyze
            if ~isempty(app.ciespectra)
%                 prepares chromaticity diagram
                delete(findobj('Name', 'Chromaticity Diagram'));
                fig = figure('Name', 'Chromaticity Diagram', 'NumberTitle', 'off');
                fig.Visible = 'off';
                ax = axes(fig);
                plotChromaticity('Parent', ax);
                hold(ax, 'on');
                
%                 loads data from spectra
                curfile = app.selectedfile;
                datatab = app.dataplotted;
                filenames = datatab.filename;
                fullfiles = datatab.fullFile;
                emissions = datatab.emission;
                peakheights = datatab.normalpeakheight;
                
%                 initialize data export accumulators
                chrom_coords = [];
                cie_coords = [];
                files = [];
                RGB1 = [];
                RGB255 = [];
                Hex = [];

%                 handle emission and excitation spectra differently, both
%                 call other function for relevant values
                for i=1:length(app.ciespectra)
                    idx = filenames==app.ciespectra{i};
                    loaddata(app, fullfiles(idx), emissions(idx), false, peakheights(idx), false);
                    drawnow;
                    
                    if app.selectedfile{3}
                        [x, y] = CIEcalc(app.xToFit_length, app.yToFit_length);
                        Y = 1;
                        X = (Y ./ y) .* x;
                        Z = (Y ./ y) .* (1 - x - y);
                    else
                        cie = sampleColor(app.selectedfile{2});
                        X = cie(1);
                        Y = cie(2);
                        Z = cie(3);
    
                        x = X/sum(cie);
                        y = Y/sum(cie);
                    end
                    
                    maxval = max([X, Y, Z]);
                    X = X ./ maxval;
                    Y = Y ./ maxval;
                    Z = Z ./ maxval;
    
                    coord = strcat('[', string(X), ', ', string(Y), ', ', string(Z), ']');
                    rgb = double(xyz2rgb([x, y, 1-x-y], 'OutputType', 'uint8', 'WhitePoint', app.WhitePoint_DropDown.Value)) ./ 260;
                
%                     display values on diagram
                    app.chromaticity_TextBox.Text = string('[' + string(x) + ', ' + string(y) + ']');
                    scatter(ax, x, y, 'filled', "MarkerFaceColor", 'w', 'MarkerEdgeColor', 'k');
                    msg = strcat('[', string(x), ', ', string(y), ']');
                    text(ax, x, y, [strcat(filenames(idx)) strcat(newline, msg)], 'Interpreter', 'none', 'Position', [4 0 0]);

                    chrom_coords = [chrom_coords; msg];
                    cie_coords = [cie_coords; coord];
                    files = [files; filenames(idx)];
                    RGB1 = [RGB1; strcat('[', string(rgb(1)), ', ', string(rgb(2)), ', ', string(rgb(3)), ']')];
                    rgb = round(rgb .* 255);
                    RGB255 = [RGB255; strcat('[', string(rgb(1)), ', ', string(rgb(2)), ', ', string(rgb(3)), ']')];
                    Hex = [Hex; rgb2hex([rgb(1), rgb(2), rgb(3)])];
                end
                
%                 reload selected spectrum
                loaddata(app, curfile{2}, curfile{3}, false, curfile{4}, false);
                app.SelectSpectrumtoFitButton.Enable = 'on';
            else
                msgbox("No data to run. Try again once you've selected a spectrum.");
            end
        end
        
        
%         Function called by the plotfit function that returns the
%         coefficient of determination for the currently loaded data set
        function calcdeterm(app)
            if ~isequal(app.xToFit_number, 0)
                xdata = app.xToFit_number;
                ydata = app.yToFit_number;
                R2 = corr2(ydata, lineshape(app, xdata));
                app.RLabel.Visible = 'on';
                app.RLabel.Text = '       R² = ' + string(round(R2, 5, 'decimals'));
                app.GoFLabel.Visible = 'off';
                app.Whatsthis_GoFButton.Visible = 'off';
                app.GoFStatisticsPanel.Visible = 'off';
            end
        end
        
        
%         Function called by the plotfit function that calculates intensity values
%         using the FCLSA equation for the currently selected parameter values
%         and x-range and increment
        function I = lineshape(app, V, params)
%             load parameter values
            E = app.E_value;
            v05 = app.v05_value;
            S = app.S_value;
            hw = app.hw_value;
            hw2 = app.hw2_value;
            S2 = app.S2_value;
                
%             load given parameter values, if given
            if isequal(nargin, 3)
                E = params(1);
                v05 = params(2);
                S = params(3);
                hw = params(4);
                if isequal(length(params), 6)
                    S2 = params(5);
                    hw2 = params(6);
                end
            end
            
%             performs FCLSA and outputs intensities
            if ~app.isdouble
                I = 0;
                for n=app.Sum1lower:app.Sum1upper
                    I = I + (((E - n .* hw) ./ E) .^ 3) .* ((S .^ n) ./ factorial(n)) .* exp(-4 .* log(2) .* ((V - E + n .* hw) ./ v05) .^2);
                end
            else
                I = 0;
                
                for two=app.Sum2lower:app.Sum2upper
                    for one=app.Sum1lower:app.Sum1upper
                        I = I + (((E - one .* hw - two .* hw2) ./ E) .^ 4) .* ((S .^ one) ./ factorial(one)) .* ((S2 .^ two) ./ factorial(two)) .* exp(-4 .* log(2) .* ((V - E + one .* hw + two .* hw2) ./ v05) .^2);
                    end
                end
            end
        end
        
        
%         Function called when usin the X% rule to calculate E0. Calls a
%         MATLAB File Exchange function that calculates the full-width
%         half-max of an incomplete Gaussian curve
        function calculatefwhm(app)
%             load and order data and bounds
            tab = table(app.xToFit_number, app.yToFit_number);
            lower = app.lowerbound;
            upper = app.upperbound;
            
            if lower > upper
                temp = lower;
                lower = upper;
                upper = temp;
            end
            
%             convert if i nwavelength
            if isequal(app.wave, "Wavelength")
                lower = 10000000 ./ lower;
                upper = 10000000 ./ upper;
            end
            
%             take only data within bounds
            for r=height(tab):1
                val = tab(r, 1); 
                if ~((val <= upper) && (val >= lower))
                    tab(r,:) = [];
                end
            end
            
%             call functino to calculate full width athalf max
            x = tab{:,1};
            y = tab{:,2};
            width = fwhm(x, y);
            
%             calculate and reload E0
            [~, indx] = max(y);
            vmax = round(x(indx));
            if isequal(app.percentrule, 1)
                Eval = vmax + 1.29 .* width;
            else
                Eval = vmax + 0.91 .* width;
            end
            
            Eval = round(Eval);
            app.E_slider.Value = Eval;
            app.E_editField.Value = Eval;
            app.E_value = Eval;
        end
        
        
%         Function that evaluates the current state of the E0 calculation
%         method and responds appropriately
        function E00calcchanged(app)
%             determine method to calculate E0
            if app.FullFCSLAfitButton.Value
%                 reload data, which will perform the needed analysis
                app.E0method = 'fclsa';
                currentfile = app.selectedfile;
                if isequal(string(currentfile{3}), 'true')
                    emission = true;
                else
                    emission = false;
                end
                loaddata(app, currentfile{2}, emission, true, currentfile{4}, false);
            elseif app.XRuleButton.Value
%                 begin peak selection process
                app.E0method = 'XRule';
                app.select = 'left';
                app.SelectIntersectPanel.Title = 'Select Upper Bound';
                app.SelectPointDialogue.Text = ['Using your cursor, please carefully click the upper bound', newline, 'of the individual Gaussian containing the maximum peak on the', newline, 'graph, then press the "Point Selected" button below.'];
                
                if height(app.dataplotted) >= 2
                    app.SettingsPanel.Visible = 'off';
                    app.SelectIntersectPanel.Visible = 'on';
                end
            else
%                 begin intersect selection process
                app.E0method = 'intersect';
                app.select = 'intersect';
                app.SelectIntersectPanel.Title = 'Select Intersect';
                app.SelectPointDialogue.Text = ['Using your cursor, please carefully click the intersection', newline, 'of the relevant excitation and emission spectra on the', newline, 'graph, then press the "Point Selected" button below.'];
                
                if height(app.dataplotted) >= 3
                    app.SettingsPanel.Visible = 'off';
                    app.SelectIntersectPanel.Visible = 'on';
                end
            end
        end
    
        
%           If applicable, changes CIEPopoutStateButton Icon
        function changeCIEicon(app)
%             changes CIE Pop Out button icon based on number of plotted
%             spectra, and current state of th ebutton
            if app.multiCIE && height(app.dataplotted) > 2
                app.CIEPopoutStateButton.Icon = 'Ellipsis Icon (New).png';
            else
                if app.CIEPopoutStateButton.Value
                    app.CIEPopoutStateButton.Icon = 'Pop In Icon (New).png';
                else
                   app.CIEPopoutStateButton.Icon = 'Pop out Icon (New).png'; 
                end
            end
        end
        
%         reset all custom bounds
        function resetBounds(app)
            app.E0_upperbound_editBox.Value = 40000;
            app.E0_lowerbound_editBox.Value = 0;
            app.v05_upperbound_editBox.Value = 5000;
            app.v05_lowerbound_editBox.Value = 0;
            app.S1_upperbound_editBox.Value = 3;
            app.S1_lowerbound_editBox.Value = 0;
            app.hw1_upperbound_editBox.Value = 4000;
            app.hw1_lowerbound_editBox.Value = 0;
            app.S2_upperbound_editBox.Value = 3;
            app.S2_lowerbound_editBox.Value = 0;
            app.hw2_upperbound_editBox.Value = 4000;
            app.hw2_lowerbound_editBox.Value = 0;
        end
        
        
%         resets color analysis values
        function resetColor(app)
            app.chromaticity_TextBox.Text = '';
            app.CIEPopoutStateButton.Value = 0;
            app.Color_Panel.BackgroundColor = [0.22,0.22,0.22];
            set(findobj('Name', 'Chromaticity Diagram'), 'Visible', 'off');
            app.chromchart = 0;
            app.cieCoord = "";
            app.rgbValue1 = "";
            app.rgbValue255 = "";
            app.hexValue = "";
            changeCIEicon(app);
        end
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            hold(app.UIAxes,'on');
            app.UIAxes.Title.Color = [0.65 0.65 0.65];
            app.UIAxes.Title.Interpreter = 'none';
            makelegend(app)
        end

        % Button pushed function: OptimizeFitButton
        function OptimizeFitButtonPushed(app, event)
           if (isequal(app.xToFit_number, 0) || isequal(app.yToFit_number, 0))
               msgbox("No data to fit. Try again once you've loaded something.");
           else 
               if app.Savecommandline_checkbox.Value
                   if isequal(app.diaryfile, "")
                       [file, path] = uiputfile('*.txt', 'Select a destination for your command window diary', 'diary');
                       app.diaryfile = strcat(path, file);
                   end
                   diary(app.diaryfile);
               end
               
               app.OptimizingLamp.Color = '#34e363';
               app.OptimizeFitButton.Visible = 'off';
               app.CancelOptimizationButton.Visible = 'on';
               app.Optimizationhasbeenrunnings.Visible = 'on';
               d = string(datestr(now, 'HH:MM AM'));
               app.Optimizationhasbeenrunnings.Text = 'Optimization has been running since ' + d;
               drawnow;
               
               if isequal(app.optmethod, 'LS')
                   LSoptimize(app);
               else
                   Simoptimize(app);
               end
               
               drawnow;
                              
               app.OptimizingLamp.Color = '#797a80';
               app.OptimizeFitButton.Visible = 'on';
               app.CancelOptimizationButton.Visible = 'off';
               app.Optimizationhasbeenrunnings.Visible = 'off';
               
               if app.Savecommandline_checkbox.Value
                   diary off
               end
           end
        end

        % Button pushed function: CancelOptimizationButton
        function CancelOptimizationButtonPushed(app, event)
            app.CancelOptimizationButton.Enable = 'off';
            app.Optimizationhasbeenrunnings.Text = 'Cancelling...';
            drawnow;
            
            OptimizeFitButtonPushed(app, matlab.ui.eventdata.ButtonPushedData);
            drawnow;
            
            app.OptimizingLamp.Color = '#797a80';
            app.OptimizeFitButton.Visible = 'on';
            app.CancelOptimizationButton.Visible = 'off';
            app.Optimizationhasbeenrunnings.Visible = 'off';
        end

        % Value changed function: E_slider
        function E_sliderValueChanged(app, event)
            value = app.E_slider.Value;
            app.E_editField.Value = round(value);
            app.E_value = round(value);
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: E_editField
        function E_editFieldValueChanged(app, event)
            value = app.E_editField.Value;
            app.E_editField.Value = round(value);
            app.E_slider.Value = value;
            app.E_value = round(value);
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: hw_editField
        function hw_editFieldValueChanged(app, event)
            value = round(app.hw_editField.Value);
            app.hw_slider.Value = value;
            app.hw_value = value;
            app.hw_editField.Value = value;
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: hw_slider
        function hw_sliderValueChanged(app, event)
            value = round(app.hw_slider.Value);
            app.hw_editField.Value = value;
            app.hw_slider.Value = value;
            app.hw_value = value;
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: S_editField
        function S_editFieldValueChanged(app, event)
            value = app.S_editField.Value;
            app.S_editField.Value = round(value, 2, "decimals");
            app.S_slider.Value = value;
            app.S_value = round(value, 2, "decimals");
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: S_slider
        function S_sliderValueChanged(app, event)
            value = app.S_slider.Value;
            app.S_editField.Value = round(value, 2, "decimals");
            app.S_value = round(value, 2, "decimals");
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: v05_editField
        function v05_editFieldValueChanged(app, event)
            value = app.v05_editField.Value;
            app.v05_editField.Value = round(value);
            app.v05_slider.Value = value;
            app.v05_value = round(value);
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: v05_slider
        function v05_sliderValueChanged(app, event)
            value = app.v05_slider.Value;
            app.v05_editField.Value = round(value);
            app.v05_value = round(value);
            if app.autoplot
                plotfit(app);
            end
        end

        % Button pushed function: PlotfitFunctionButton
        function PlotfitFunctionButtonPushed(app, event)
            plotfit(app);
        end

        % Value changed function: NormalizespectratohighCheckBox
        function NormalizespectraValueChanged(app, event)
            app.normalize = app.NormalizespectratohighCheckBox.Value;
        end

        % Value changed function: SettingsButton
        function SettingsButtonValueChanged(app, event)
            if app.SettingsButton.Value
                app.SettingsButton.Enable = 'off';
                drawnow;
                
                app.InfoPanel.Visible = 'off';
                app.InfoButton.Value = 0;
                app.SettingsPanel.Visible = 'on';
                app.SettingsButton.Enable = 'on';
            else
                app.SettingsButton.Enable = 'off';
                drawnow;
                
                app.SettingsPanel.Visible = 'off';
                app.SettingsButton.Enable = 'on';
            end
        end

        % Button pushed function: ClearDataButton
        function ClearDataButtonPushed(app, event)
            cla(app.UIAxes);
            set(app.UIAxes, 'XLim', [11000 33500]);
            app.fitPlotted = false;
            app.RLabel.Visible = 'off';
            delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint'));
            
            app.xToFit_length = 0;
            app.yToFit_length = 0;
            app.xToFit_number = 0;
            app.yToFit_number = 0;
            
            app.ShowlegendongraphCheckBox.Enable = 'on';
            app.ShowlegendongraphCheckBox.Value = 0;
            lgd = legend(app.UIAxes);
            lgd.Visible = 'off';
            
            app.SelectedSpectrumLabel.Text = "No spectrum selected for fitting";
            app.selectedfile = {0, 0, 0, 0, 0};
            app.SelectpeakfornormalizationButton.Enable = 'off';
            app.RenormalizeallspectraButton.Enable = 'off';
            
            app.GoFLabel.Visible = 'off';
            app.UIAxes.Title.String = 'Relative Intensity vs. Wavenumber';

            if height(app.dataplotted)>1
                app.dataplotted(2:height(app.dataplotted), :) = [];
            end
            
            resetColor(app);
        end

        % Button pushed function: ResetAxesButton
        function ResetAxesButtonPushed(app, event)
            app.Xmin = app.Xmin_original;
            app.Xmax = app.Xmax_original;
            app.Xres = app.Xres_original;
            
            app.Xmin_editField.Value = app.Xmin_original;
            app.XminimumSlider.Value = app.Xmin_original;
            app.Xmax_editField.Value = app.Xmax_original;
            app.XmaximumSlider.Value = app.Xmax_original;
            app.Xres_editField.Value = app.Xres_original;
            app.XresolutionSlider.Value = app.Xres_original;
            if isequal(app.wave, 'Wavelength')
                set(app.UIAxes, 'XLim', [300 900]);
            else
                set(app.UIAxes, 'XLim', [11000 33500]);
            end
            set(app.UIAxes, 'YLim', [0, 1.2]);
        end

        % Button pushed function: ResetParametersButton
        function ResetParametersButtonPushed(app, event)
            app.E_value = app.E_value_original;
            app.hw_value = app.hw_value_original;
            app.S_value = app.S_value_original;
            app.v05_value = app.v05_value_original;
            
            app.hw2_value = app.hw2_value_original;
            app.S2_value = app.S2_value_original;
            
            app.Sum1lower = app.Sum1Lower_original;
            app.Sum1upper = app.Sum1upper_original;
            app.Sum2lower = app.Sum2lower_original;
            app.Sum2upper = app.Sum2upper_original;
            
            app.E_editField.Value = app.E_value;
            app.E_slider.Value = app.E_value_original;
            app.hw_slider.Value = app.hw_value_original;
            app.hw_editField.Value = app.hw_value_original;
            app.S_editField.Value = app.S_value_original;
            app.S_slider.Value = app.S_value_original;
            app.v05_editField.Value = app.v05_value_original;
            app.v05_slider.Value = app.v05_value_original;
            
            app.hw2_editField.Value = app.hw2_value_original;
            app.hw2_slider.Value = app.hw2_value_original;
            app.S2_slider.Value = app.S2_value_original;
            app.S2_editField.Value = app.S2_value_original;
            
            app.SumLowerLimitSpinner.Value = app.Sum1Lower_original;
            app.SumUpperLimitSpinner.Value = app.Sum1upper_original;
            app.Sum2LowerLimitSpinner.Value = app.Sum2lower_original;
            app.Sum2UpperLimitSpinner.Value = app.Sum2upper_original;
            
            app.Ges_TextBox.Text = '';
            resetBounds(app);
            
            app.E00CheckBox.Value = false;
            app.SCheckBox.Value = false;
            app.S2CheckBox.Value = false;
            app.v05CheckBox.Value = false;
            app.hwCheckBox.Value = false;
            app.hw2CheckBox.Value = false;
            app.fixed = {};
            
            app.GoFLabel.Visible = 'off';
        end

        % Value changed function: XmaximumSlider
        function XmaximumSliderValueChanged(app, event)
            value = app.XmaximumSlider.Value;
            app.Xmax_editField.Value = round(value);
            app.Xmax = round(value);
            
            if app.Xaxiswithfit_checkBox.Value
                bounds = get(app.UIAxes, 'Xlim');
                try
                    set(app.UIAxes, 'Xlim', [bounds(1) value]);
                catch
                    set(app.UIAxes, 'Xlim', [value bounds(1)]);
                end
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: XminimumSlider
        function XminimumSliderValueChanged(app, event)
            value = app.XminimumSlider.Value;
            app.Xmin_editField.Value = round(value);
            app.Xmin = round(value);
            
            if app.Xaxiswithfit_checkBox.Value
                bounds = get(app.UIAxes, 'Xlim');
                try
                    set(app.UIAxes, 'Xlim', [value bounds(2)]);
                catch
                    set(app.UIAxes, 'Xlim', [bounds(2) value]);
                end
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Xres_editField
        function Xres_editFieldValueChanged(app, event)
            value = app.Xres_editField.Value;
            app.Xres_editField.Value = round(value);
            app.XresolutionSlider.Value = value;
            app.Xres = round(value);
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: XresolutionSlider
        function XresolutionSliderValueChanged(app, event)
            value = app.XresolutionSlider.Value;
            app.Xres_editField.Value = round(value);
            app.Xres = round(value);
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Xmin_editField
        function Xmin_editFieldValueChanged(app, event)
            value = app.Xmin_editField.Value;
            app.Xmin_editField.Value = round(value);
            app.XminimumSlider.Value = round(value);
            app.Xmin = round(value);
            
            if app.Xaxiswithfit_checkBox.Value
                bounds = get(app.UIAxes, 'Xlim');
                try
                    set(app.UIAxes, 'Xlim', [value bounds(2)]);
                catch
                    set(app.UIAxes, 'Xlim', [bounds(2) value]);
                end
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Xmax_editField
        function Xmax_editFieldValueChanged(app, event)
            value = app.Xmax_editField.Value;
            app.Xmax_editField.Value = round(value);
            app.XmaximumSlider.Value = round(value);
            app.Xmax = round(value);
            
            if app.Xaxiswithfit_checkBox.Value
                bounds = get(app.UIAxes, 'Xlim');
                try
                    set(app.UIAxes, 'Xlim', [bounds(1) value]);
                catch
                    set(app.UIAxes, 'Xlim', [value bounds(1)]);
                end
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Allowmultipleimportedspectra
        function AllowmultipleimportedspectraValueChanged(app, event)
            value = app.Allowmultipleimportedspectra.Value;
            if value
                app.multipleGraphs = true;
            else 
                app.multipleGraphs = false;
            end
        end

        % Value changed function: SumUpperLimitSpinner
        function SumUpperLimitSpinnerValueChanged(app, event)
            value = app.SumUpperLimitSpinner.Value;
            app.Sum1upper = value;
            
            if value <= app.SumLowerLimitSpinner.Value
                app.SumLowerLimitSpinner.Value = value - 1;
                app.Sum1lower = value - 1;
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: SumLowerLimitSpinner
        function SumLowerLimitSpinnerValueChanged(app, event)
            value = app.SumLowerLimitSpinner.Value;
            app.Sum1lower = value;
            
            if value >= app.SumUpperLimitSpinner.Value
                app.SumUpperLimitSpinner.Value = value + 1;
                app.Sum1upper = value + 1;
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Sum2UpperLimitSpinner
        function Sum2UpperLimitSpinnerValueChanged(app, event)
            value = app.Sum2UpperLimitSpinner.Value;
            app.Sum2upper = value;
            
            if value <= app.Sum2LowerLimitSpinner.Value
                app.Sum2LowerLimitSpinner.Value = value - 1;
                app.Sum2lower = value - 1;
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: Sum2LowerLimitSpinner
        function Sum2LowerLimitSpinnerValueChanged(app, event)
            value = app.Sum2LowerLimitSpinner.Value;
            app.Sum2lower = value;
            
            if value >= app.Sum2UpperLimitSpinner.Value
                app.Sum2UpperLimitSpinner.Value = value + 1;
                app.Sum2upper = value +1;
            end
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: S2_editField
        function S2_editFieldValueChanged(app, event)
            value = app.S2_editField.Value;
            app.S2_editField.Value = round(value, 2, "decimals");
            app.S2_slider.Value = round(value, 2, "decimals");
            app.S2_value = round(value, 2, "decimals");
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: S2_slider
        function S2_sliderValueChanged(app, event)
            value = app.S2_slider.Value;
            app.S2_editField.Value = round(value);
            app.S2_value = round(value);
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: hw2_editField
        function hw2_editFieldValueChanged(app, event)
            value = app.hw2_editField.Value;
            app.hw2_slider.Value = round(value);
            app.hw2_value = round(value);
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: hw2_slider
        function hw2_sliderValueChanged(app, event)
            value = app.hw2_slider.Value;
            app.hw2_slider.Value = round(value);
            app.hw2_editField.Value = value;
            app.hw2_value = round(value);
            
            if app.autoplot
                plotfit(app);
            end
        end

        % Value changed function: ShowdatapeaklabelsCheckBox
        function ShowdatapeaksValueChanged(app, event)
            app.showpeaks = app.ShowdatapeaklabelsCheckBox.Value;
            if app.ShowdatapeaklabelsCheckBox.Value
               set(findobj(app.UIAxes, 'Type', 'Text'), 'Visible', 'on'); 
            else
               set(findobj(app.UIAxes, 'Type', 'Text'), 'Visible', 'off'); 
            end
        end

        % Button pushed function: FigureButton
        function FigureButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataButton.Value = 0;
            app.ExportDataOptionsPanel.Visible = 'off';
            drawnow;
            
            exportFigure(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Button pushed function: FitdatapointsButton
        function FitdatapointsButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataButton.Value = 0;
            drawnow;
            
            exportFitPoints(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Button pushed function: ParametervaluesButton
        function ParametervaluesButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataButton.Value = 0;
            drawnow;
            
            exportValues(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Button pushed function: SpectrumdatapointsButton
        function SpectrumdatapointsButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataButton.Value = 0;
            drawnow;
            
            exportSpectrum(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Value changed function: ExportDataButton
        function ExportDataButtonValueChanged(app, event)
            value = app.ExportDataButton.Value;
            if value == 0
                app.ExportDataOptionsPanel.Visible = 'off';
            else
                app.ExportDataOptionsPanel.Visible = 'on';
            end
        end

        % Button pushed function: PopOutButton
        function PopOutButtonPushed(app, event)
            if app.activefigure ~= 0
                delete(findobj(app.activefigure))
            end
            
            displayfig = figure('Name', 'Adjusted Intensity vs. Wavenumber', 'NumberTitle', 'off');
            copyUIAxes(app.UIAxes, displayfig);
            app.activefigure = displayfig;
        end

        % Value changed function: 
        % Formatfiguresforpublicationbeforeex
        function FormatfiguresforpublicationValueChanged(app, event)
            app.pubformat = app.Formatfiguresforpublicationbeforeex.Value;
        end

        % Value changed function: ShowlegendongraphCheckBox
        function ShowlegendongraphValueChanged(app, event)
            app.showlegend = app.ShowlegendongraphCheckBox.Value;
            
            lgd = legend(app.UIAxes);
            if app.showlegend
                lgd.Visible = 'on';
            else
                lgd.Visible = 'off';
            end
        end

        % Selection changed function: XAxisSettingsButtonGroup
        function FitSettingsButtonGroupSelectionChanged(app, event)
            if app.AutofitXaxisandfitlimitsButton.Value
                app.fittodata = true;
                app.Xaxiswithfit_checkBox.Enable = 'off';
                app.Autofit_transparent_panel.Visible = 'on';
                if app.fitPlotted
                    delete(findobj(app.UIAxes,'Type','line'));
                end
                set(app.UIAxes, 'XLimMode', 'auto');
                drawnow;
                
                arr = get(app.UIAxes, 'XLim');
                low = arr(1);
                high = arr(2);
                app.Xmax = high;
                app.Xmax_editField.Value = high;
                app.XmaximumSlider.Value = high;
                app.Xmin = low;
                app.Xmin_editField.Value = low;
                app.XminimumSlider.Value = low;
                drawnow;
                
                if app.fitPlotted
                    plotfit(app);
                end
            else
                app.fittodata = false;
                app.Xaxiswithfit_checkBox.Enable = 'on';
                app.Autofit_transparent_panel.Visible = 'off';
            end
        end

        % Button pushed function: E_minus_coarse
        function E_minus_coarseButtonPushed(app, event)
            changevalue(app, 'E', app.E_slider, app.E_editField, -1000);
        end

        % Button pushed function: E_plus_coarse
        function E_plus_coarseButtonPushed(app, event)
            changevalue(app, 'E', app.E_slider, app.E_editField, 1000);
        end

        % Button pushed function: E_minus_fine
        function E_minus_fineButtonPushed(app, event)
            changevalue(app, 'E', app.E_slider, app.E_editField, -50);
        end

        % Button pushed function: E_plus_fine
        function E_plus_fineButtonPushed(app, event)
            changevalue(app, 'E', app.E_slider, app.E_editField, 50);
        end

        % Button pushed function: S_minus_coarse
        function S_minus_coarseButtonPushed(app, event)
            changevalue(app, 'S', app.S_slider, app.S_editField, -0.2);
        end

        % Button pushed function: S_plus_coarse
        function S_plus_coarseButtonPushed(app, event)
            changevalue(app, 'S', app.S_slider, app.S_editField, 0.2);
        end

        % Button pushed function: S_minus_fine
        function S_minus_fineButtonPushed(app, event)
            changevalue(app, 'S', app.S_slider, app.S_editField, -0.02);
        end

        % Button pushed function: S_plus_fine
        function S_plus_fineButtonPushed(app, event)
            changevalue(app, 'S', app.S_slider, app.S_editField, 0.02);
        end

        % Button pushed function: v05_minus_coarse
        function v05_minus_coarseButtonPushed(app, event)
            changevalue(app, 'v05', app.v05_slider, app.v05_editField, -200);
        end

        % Button pushed function: v05_plus_coarse
        function v05_plus_coarseButtonPushed(app, event)
            changevalue(app, 'v05', app.v05_slider, app.v05_editField, 200);
        end

        % Button pushed function: v05_minus_fine
        function v05_minus_fineButtonPushed(app, event)
            changevalue(app, 'v05', app.v05_slider, app.v05_editField, -20);
        end

        % Button pushed function: v05_plus_fine
        function v05_plus_fineButtonPushed(app, event)
            changevalue(app, 'v05', app.v05_slider, app.v05_editField, 20);
        end

        % Button pushed function: hw_minus_coarse
        function hw_minus_coarseButtonPushed(app, event)
            changevalue(app, 'hw', app.hw_slider, app.hw_editField, -100);
        end

        % Button pushed function: hw_plus_coarse
        function hw_plus_coarseButtonPushed(app, event)
            changevalue(app, 'hw', app.hw_slider, app.hw_editField, 100);
        end

        % Button pushed function: hw_minus_fine
        function hw_minus_fineButtonPushed(app, event)
            changevalue(app, 'hw', app.hw_slider, app.hw_editField, -20);
        end

        % Button pushed function: hw_plus_fine
        function hw_plus_fineButtonPushed(app, event)
            changevalue(app, 'hw', app.hw_slider, app.hw_editField, 20);
        end

        % Button pushed function: CalculateButton
        function CalculateButtonPushed(app, event)
            calculateenergy(app);
            calculateCIEsingle(app);
        end

        % Button pushed function: S2_minus_coarse
        function S2_minus_coarseButtonPushed(app, event)
            changevalue(app, 'S2', app.S2_slider, app.S2_editField, -0.2);
        end

        % Button pushed function: S2_plus_coarse
        function S2_plus_coarseButtonPushed(app, event)
            changevalue(app, 'S2', app.S2_slider, app.S2_editField, 0.2);
        end

        % Button pushed function: S2_minus_fine
        function S2_minus_fineButtonPushed(app, event)
            changevalue(app, 'S2', app.S2_slider, app.S2_editField, -0.02);
        end

        % Button pushed function: S2_plus_fine
        function S2_plus_fineButtonPushed(app, event)
            changevalue(app, 'S2', app.S2_slider, app.S2_editField, 0.02);
        end

        % Button pushed function: hw2_minus_coarse
        function hw2_minus_coarseButtonPushed(app, event)
            changevalue(app, 'hw2', app.hw2_editField, app.hw2_slider, -100);
        end

        % Button pushed function: hw2_plus_coarse
        function hw2_plus_coarseButtonPushed(app, event)
            changevalue(app, 'hw2', app.hw2_editField, app.hw2_slider, 100);
        end

        % Button pushed function: hw2_minus_fine
        function hw2_minus_fineButtonPushed(app, event)
            changevalue(app, 'hw2', app.hw2_editField, app.hw2_slider, -20);
        end

        % Button pushed function: hw2_plus_fine
        function hw2_plus_fineButtonPushed(app, event)
            changevalue(app, 'hw2', app.hw2_editField, app.hw2_slider, 20);
        end

        % Value changed function: Automaticallyplotfit
        function AutomaticallyplotfitValueChanged(app, event)
            app.autoplot = app.Automaticallyplotfit.Value;
        end

        % Callback function
        function GunitsButtonGroupSelectedChanged(app, event)
            if app.ElectronvolteVButton.Value
                app.delGeV = true;
                app.GsJTextAreaLabel_J.Visible = 'off';
            else
                app.delGeV = false;
                app.GsJTextAreaLabel_J.Visible = 'on';
            end  
        end

        % Value changed function: IncludeGsandCIEondataexport
        function IncludeGsandCIEValueChanged(app, event)
            app.exportcalc = app.IncludeGsandCIEondataexport.Value;
        end

        % Value changed function: AutomaticallycalculateGs
        function AutomaticallycalculateGValueChanged(app, event)
            app.autocalc = app.AutomaticallycalculateGs.Value;
        end

        % Callback function
        function EditFieldValueChanged(app, event)
            app.T_value = round(app.Temp_EditField.Value);
        end

        % Value changed function: RetrieveimportfiletitleCheckBox
        function RetrieveimportfiletitleValueChanged(app, event)
            app.metadata = app.RetrieveimportfiletitleCheckBox.Value;
            
            if ~app.metadata
                app.UIAxes.Title.String = 'Relative Intensity vs. Wavenumber';
            elseif height(app.dataplotted) > 1
                file = app.selectedfile;
                filename = file{1};
                app.UIAxes.Title.String = filename;
            end
        end

        % Selection changed function: 
        % CalculationsSettingsButtonGroup
        function CalculationsSettingsSelectionChanged(app, event)
            if app.KButton_298.Value
                app.Temp_EditField.Enable = 'off';
                app.T_value = 298;
            elseif app.KButton_77.Value
                app.Temp_EditField.Enable = 'off';
                app.T_value = 77;
            elseif app.KButton_Other.Value
                app.Temp_EditField.Enable = 'on';
                app.T_value = round(app.Temp_EditField.Value);
            end
            
            calculateenergy(app);
        end

        % Value changed function: Temp_EditField
        function Temp_EditFieldValueChanged(app, event)
            app.T_value = round(app.Temp_EditField.Value);
            calculateenergy(app);
        end

        % Callback function
        function OptimizationSettingsSelectionChanged(app, event)
            app.tightconstraints = app.RunwithtightconstraintsfastestButton.Value;
        end

        % Value changed function: AutomaticallycalculateCoefficient
        function AutomaticallycalculateValueChanged(app, event)
            app.autodeterm = app.AutomaticallycalculateCoefficient.Value;
        end

        % Value changed function: ImportDataButton
        function ImportDataButtonValueChanged(app, event)
            value = app.ImportDataButton.Value;
            if isequal(value, 0)
                app.ImportDataOptionsPanel.Visible = 'off';
            else
                app.ImportDataOptionsPanel.Visible = 'on';
                app.SelectSpectrumPanel.Visible = 'off';
            end
        end

        % Button pushed function: ExcitationButton
        function ExcitationButtonPushed(app, event)
            app.ExcitationButton.Enable = 'off';
            app.ImportDataOptionsPanel.Visible = 'off';
            app.ImportDataButton.Enable = 'off';
            app.SelectSpectrumtoFitButton.Enable = 'off';
            app.PlottingLamp.Color = '#34e363';
            drawnow
            
            loaddata(app, 0, false, true, 1, true);
            
            app.ExcitationButton.Enable = 'on';
            app.PlottingLamp.Color = '#797a80';
            
            app.ImportDataButton.Value = 0;
            app.ImportDataButton.Enable = 'on';
            app.SelectSpectrumtoFitButton.Enable = 'on';
        end

        % Button pushed function: EmissionButton
        function EmissionButtonPushed(app, event)
            app.EmissionButton.Enable = 'off';
            app.ImportDataOptionsPanel.Visible = 'off';
            app.ImportDataButton.Enable = 'off';
            app.SelectSpectrumtoFitButton.Enable = 'off';
            app.PlottingLamp.Color = '#34e363';
            drawnow 
            
            loaddata(app, 0, true, true, 1, true);
            
            app.EmissionButton.Enable = 'on';
            app.PlottingLamp.Color = '#797a80';
            
            app.ImportDataButton.Value = 0;
            app.SelectSpectrumtoFitButton.Enable = 'on';
            app.ImportDataButton.Enable = 'on';
        end

        % Selection changed function: E00ButtonGroup
        function E00CalculationSelectionChanged(app, event)
            E00calcchanged(app);
        end

        % Button pushed function: PointSelectedButton
        function PointSelectedButtonPushed(app, event)
            app.SelectIntersectPanel.Visible = 'off';
            drawnow;
            
            pos = app.UIAxes.CurrentPoint;
            app.PointSelectedPanel.Visible = 'on';
            p = scatter(app.UIAxes, pos(1,1), pos(1,2),'filled', "s", "MarkerFaceColor", 'w', 'MarkerEdgeColor', 'k', "SizeData", 70, "DisplayName", "Selected Point", "Tag", "Pointer");
            
            if isequal(app.select, "intersect")
                yline(app.UIAxes, pos(1,2), 'Color', get(p, 'CData'), 'Tag', 'PointerLine', 'DisplayName', 'Selected Point');
                xline(app.UIAxes, pos(1,1), 'Color', get(p, 'CData'), 'Tag', 'PointerLine', 'DisplayName', 'Selected Point');
            elseif isequal(app.select, "peak")
                yline(app.UIAxes, pos(1,2), 'Color', get(p, 'CData'), 'Tag', 'PointerLine', 'DisplayName', 'Selected Intensity');
            elseif isequal(app.select, "left")
                xline(app.UIAxes, pos(1,1), 'Color', get(p, 'CData'), 'Tag', 'LeftPointerLine', 'DisplayName', 'Upper Bound');
            elseif isequal(app.select, "right")
                xline(app.UIAxes, pos(1,1), 'Color', get(p, 'CData'), 'Tag', 'RightPointerLine', 'DisplayName', 'Lower Bound');
            end
            
            app.PointSelectedDialogue.Text = [strcat('You have selected the point (', string(round(pos(1,1))), ',  ', string(round(pos(1,2), 3, 'significant')), ')')  'Would you like to continue with this point or reselect?'];
        end

        % Button pushed function: ReselectButton
        function ReselectButtonPushed(app, event)
            delete(findobj(app.UIAxes, "Tag", "Pointer"));
            if isequal(app.select, "peak") || isequal(app.select, "intersect")
                delete(findobj(app.UIAxes, "Tag", "PointerLine"));
            elseif isequal(app.select, "left")
                delete(findobj(app.UIAxes, "Tag", "LeftPointerLine"));
            elseif isequal(app.select, "right")
                delete(findobj(app.UIAxes, "Tag", "RightPointerLine"));
            end
            app.SelectIntersectPanel.Visible = 'on';
            app.PointSelectedPanel.Visible = 'off';
        end

        % Button pushed function: ContinueButton
        function ContinueButtonPushed(app, event)
            if isequal(app.select, "intersect")
                x = get(findobj(app.UIAxes, "Tag", "Pointer"), 'XData');
                if isequal(app.wave, 'Wavelength')
                    x = 10000000 ./ x;
                end
                app.E_editField.Value = round(x(1));
                app.E_slider.Value = round(x(1));
                app.E_value = round(x(1));
            elseif isequal(app.select, "peak")
                y = get(findobj(app.UIAxes, "Tag", "Pointer"), 'YData');
                currentfile = app.selectedfile;
                if isequal(string(currentfile{3}), 'true')
                    emission = true;
                else
                    emission = false;
                end
                loaddata(app, currentfile{2}, emission, true, y, true);
                if app.fitPlotted
                    plotfit(app);  
                end
            elseif isequal(app.select, "left")
                app.upperbound = get(findobj(app.UIAxes, "Tag", "Pointer"), 'XData');
                app.select = 'right';
                app.SelectIntersectPanel.Visible = 'on';
                app.SelectIntersectPanel.Title = 'Select Lower Bound';
                app.SelectPointDialogue.Text = ['Using your cursor, please carefully click the lower bound', newline, 'of the individual Gaussian containing the maximum peak on the', newline, 'graph, then press the "Point Selected" button below.'];
            elseif isequal(app.select, "right")
                app.select = 'done';
                app.lowerbound = get(findobj(app.UIAxes, "Tag", "Pointer"), 'XData');
                
                calculatefwhm(app);
            end
            
            app.PointSelectedPanel.Visible = 'off';
            delete(findobj(app.UIAxes, "Tag", "Pointer"));
            if isequal(app.select, "peak") || isequal(app.select, "intersect")
                delete(findobj(app.UIAxes, "Tag", "PointerLine"));
            elseif isequal(app.select, "done")
                delete(findobj(app.UIAxes, "Tag", "LeftPointerLine"));
                delete(findobj(app.UIAxes, "Tag", "RightPointerLine"));
            end
        end

        % Value changed function: Wave_switch
        function Wave_switchValueChanged(app, event)
            app.wave = app.Wave_switch.Value;
            cla(app.UIAxes);
            delete(findobj(app.UIAxes, 'Type', 'text'));
            
            bounds = [app.XminimumSlider.Value, app.XmaximumSlider.Value];
            
            if isequal(app.wave, "Wavenumber")
                app.wave = 'Wavenumber';
                xlabel(app.UIAxes, 'Wavenumber (cmÿ¹)');
                
                set(app.UIAxes, 'XDir', 'reverse');
                set(app.UIAxes, 'XLim', [11000 33500]);
                app.XmaximumSlider.Limits = [0 100000];
                app.XmaximumSlider.MajorTicks = [0, 50000, 100000];
                app.XmaximumSlider.MajorTickLabels = {'0', '5', '10'};
                app.Xmax_editField.Limits = [0 100000];
                app.XminimumSlider.Limits = [0 100000];
                app.XminimumSlider.MajorTicks = [0, 50000, 100000];
                app.XminimumSlider.MajorTickLabels = {'0', '5', '10'};
                app.Xmin_editField.Limits = [0 100000];
                app.nmLabel.Visible = 'off';
                app.nmLabel_2.Visible = 'off';
                
                app.Xres_original = 50;
                app.Xres = 50;
                app.Xres_editField.Value = 50;
                app.XresolutionSlider.Value = 50;
            else 
                app.wave = 'Wavelength';
                xlabel(app.UIAxes, 'Wavelength (nm)');
                
                set(app.UIAxes, 'XDir', 'normal');
                set(app.UIAxes, 'XLim', [300 900]);
                app.XmaximumSlider.Limits = [0 1200];
                app.XmaximumSlider.MajorTicks = [0, 600, 1200];
                app.XmaximumSlider.MajorTickLabels = {'0', '600', '1200'};
                app.Xmax_editField.Limits = [0 1200];
                app.XminimumSlider.Limits = [0 1200];
                app.XminimumSlider.MajorTicks = [0, 600, 1200];
                app.XminimumSlider.MajorTickLabels = {'0', '600', '1200'};
                app.Xmin_editField.Limits = [0 1200];
                app.nmLabel.Visible = 'on';
                app.nmLabel_2.Visible = 'on';
                
                app.Xres_original = 1;
                app.Xres = 1;
                app.Xres_editField.Value = 1;
                app.XresolutionSlider.Value = 1;
            end
                
            if height(app.dataplotted)>1
                Eval = app.E_value;
                v05val = app.v05_value;
                S1val = app.S_value;
                hw1val = app.hw_value;
                S2val = app.S2_value;
                hw2val = app.hw2_value;
                
                set(app.UIAxes, 'XLimMode', 'auto');
                tempfiles = app.dataplotted.fullFile(2:end);
                tempheights = app.dataplotted.normalpeakheight(2:end);
                app.dataplotted(2:height(app.dataplotted), :) = [];
                for k=1:length(tempfiles)
                    loaddata(app, tempfiles(k), true, true, tempheights(k), true);
                end
                
                app.E_value = Eval;
                app.E_editField.Value = Eval;
                app.E_slider.Value = Eval;
                                
                app.v05_value = v05val;
                app.v05_editField.Value = v05val;
                app.v05_slider.Value = v05val;
                
                app.hw_value = hw1val;
                app.hw_slider.Value = hw1val;
                app.hw_editField.Value = hw1val;
                
                app.S_value = S1val;
                app.S_editField.Value = S1val;
                app.S_slider.Value = S1val;
                
                app.hw2_value = hw2val;
                app.hw2_editField.Value = hw2val;
                app.hw2_slider.Value = hw2val;
                
                app.S2_value = S2val;                
                app.S2_slider.Value = S2val;
                app.S2_editField.Value = S2val;
            end
            
            if app.ManuallyadjustXaxisandfitlim.Value
                app.Xmin_editField.Value = 10000000 / bounds(0);
                app.XminimumSlider.Value = 10000000 / bounds(0);
                app.Xmax_editField.Value = 10000000 / bounds(1);
                app.XmaximumSlider.Value = 10000000 / bounds(1);
            end
            
            if app.fitPlotted
                plotfit(app)
            end
        end

        % Value changed function: Mode_switch
        function Mode_switchValueChanged(app, event)
            value = app.Mode_switch.Value;
            if value == "Single"
                app.isdouble = false;
                app.HiddenPannel.Visible = 'on';
                app.Sum1UpperHidden.Visible = 'off';
                app.Sum1LowerHidden.Visible = 'off';
                app.SumHiders.Visible = 'on';
                
                app.E0Label.Text = 'Eÿ';
                app.E0CalculationLabel.Text = 'Eÿ Calculation Method';                
                app.hw1_label.Text = 'ÿÿ';
                app.S1_label.Text = 'S';
                
                app.E0CustomBoundsPanel.Title = 'Eÿ Custom Bounds';
                app.hw1CustomBoundsPanel.Title = 'ÿÿ Custom Bounds';
                app.S1CustomBoundsPanel.Title = 'S Custom Bounds';
                
                app.S2CustomBoundsPanel.Visible = 'off';
                app.hw2CustomBoundsPanel.Visible = 'off'; 
            else
                app.isdouble = true;
                app.HiddenPannel.Visible = 'off';
                app.Sum1UpperHidden.Visible = 'on';
                app.Sum1LowerHidden.Visible = 'on';
                app.SumHiders.Visible = 'off';
                
                app.E0Label.Text = 'Eÿÿ';
                app.E0CalculationLabel.Text = 'Eÿÿ Calculation Method';
                app.hw1_label.Text = 'ÿÿÿ';
                app.S1_label.Text = 'Sÿ';
                
                app.E0CustomBoundsPanel.Title = 'Eÿÿ Custom Bounds';
                app.hw1CustomBoundsPanel.Title = 'ÿÿÿ Custom Bounds';
                app.S1CustomBoundsPanel.Title = 'Sÿ Custom Bounds';
                
                app.hw2_value = app.hw_value ./ 2;
                app.hw2_editField.Value = app.hw_value ./ 2;
                app.hw2_slider.Value = app.hw_value ./ 2;
                
                app.S2_value = app.S_value;
                app.S2_editField.Value = app.S_value;
                app.S2_slider.Value = app.S_value;
            end
        end

        % Value changed function: SelectSpectrumtoFitButton
        function SelectSpectrumtoFitButtonValueChanged(app, event)
            value = app.SelectSpectrumtoFitButton.Value;
            
            if isequal(value, 0)
                app.SelectSpectrumPanel.Visible = 'off';
            else
                if isequal(height(app.dataplotted), 1)
                    app.ImportDataButton.Value = 1;
                    ImportDataButtonValueChanged(app, matlab.ui.eventdata.ButtonPushedData);
                else         
                    app.SelectSpectrumtoFitButton.Enable = 'off';
                    filenames = app.dataplotted.filename(2:end);
                    activefile = app.selectedfile;
                    h = 21 .* length(filenames);
                    b = 128 - h;
                    
                    uilistbox(app.SelectSpectrumPanel,...
                        'Position',[15 b 315 h],...
                        'Items',filenames,... 
                        'ValueChangedFcn', @pickspectrum,...
                        "Value", activefile{1}, ...
                        "BackgroundColor", [0.44,0.45,0.46], 'FontColor', [1, 1, 1],...
                        'FontName', 'Arial', 'FontSize', 14); 
                        
                    app.SelectSpectrumtoFitButton.Enable = 'on';
                    app.SelectSpectrumPanel.Visible = 'on';
                end
            end
            
            function pickspectrum(src, ~)
                selectspectrum(app, src.Value);
            end
        end

        % Button pushed function: SelectpeakfornormalizationButton
        function SelectpeakfornormalizationButtonPushed(app, event)
            app.SettingsPanel.Visible = 'off';
            app.SelectIntersectPanel.Title = 'Select Peak';
            app.SelectPointDialogue.Text = ['Using your cursor, please carefully click the peak', newline, 'to be set equal to intensity 1 on the graph,', newline, 'then press the "Point Selected" button below.'];
            app.select = 'peak';
            app.SelectIntersectPanel.Visible = 'on';
        end

        % Selection changed function: YAxisLimitsButtonGroup
        function YAxisLimitsButtonGroupSelectionChanged(app, event)
            if app.SetYAxismaximumvalueto1Button.Value
                set(app.UIAxes, 'YLim', [0, 1.2]);
            else
                set(app.UIAxes, 'YLimMode', 'auto');
            end
        end

        % Value changed function: ThresholdweightingCheckBox
        function WeightdatapointsCheckBoxValueChanged(app, event)
            if app.ThresholdweightingCheckBox.Value
                app.Thresholdweight_EditField.Enable = 'on';
                app.Thresholdintensity_EditField.Enable = 'on';
            else
                app.Thresholdweight_EditField.Enable = 'off';
                app.Thresholdintensity_EditField.Enable = 'off';
            end
        end

        % Value changed function: Thresholdweight_EditField
        function Weight_EditFieldValueChanged(app, event)
            app.weightmultiplier = app.Thresholdweight_EditField.Value;
        end

        % Value changed function: Thresholdintensity_EditField
        function Threshold_EditFieldValueChanged(app, event)
            app.weightthreshold = app.Threshold_EditField.Value;
        end

        % Value changed function: Whatsthis_FixButton
        function Whatsthis_FixButtonValueChanged(app, event)
            value = app.Whatsthis_FixButton.Value;
            
            if isequal(value, 1)
                app.FixParameterPanel.Visible = 'on';
            else
                app.FixParameterPanel.Visible = 'off';
            end
        end

        % Value changed function: ShowTips
        function ShowTipsValueChanged(app, event)
            value = app.ShowTips.Value;
            
            if value
                app.Whatsthis_FixButton.Visible = 'on';
                if isequal(app.GoFLabel.Visible, 'on')
                    app.Whatsthis_GoFButton.Visible = 'on';
                end
            else
                app.Whatsthis_FixButton.Visible = 'off';
                app.FixParameterPanel.Visible = 'off';
                app.Whatsthis_GoFButton.Visible = 'off';
                app.GoFStatisticsPanel.Visible = 'off';
            end
        end

        % Value changed function: E00CheckBox
        function E00CheckBoxValueChanged(app, event)
            if app.E00CheckBox.Value
                app.fixed{end+1} = 'E';
            else
                idx = strcmp(app.fixed,'E');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: SCheckBox
        function SCheckBoxValueChanged(app, event)
            if app.SCheckBox.Value
                app.fixed{end+1} = 'S1';
            else
                idx = strcmp(app.fixed,'S1');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: v05CheckBox
        function v05CheckBoxValueChanged(app, event)
            if app.v05CheckBox.Value
                app.fixed{end+1} = 'v05';
            else
                idx = strcmp(app.fixed,'v05');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: hwCheckBox
        function hwCheckBoxValueChanged(app, event)
            if app.hwCheckBox.Value
                app.fixed{end+1} = 'hw1';
            else
                idx = strcmp(app.fixed,'hw1');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: hw2CheckBox
        function hw2CheckBoxValueChanged(app, event)
            if app.hw2CheckBox.Value
                app.fixed{end+1} = 'hw2';
            else
                idx = strcmp(app.fixed,'hw2');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: S2CheckBox
        function S2CheckBoxValueChanged(app, event)
            if app.S2CheckBox.Value
                app.fixed{end+1} = 'S2';
            else
                idx = strcmp(app.fixed,'S2');
                app.fixed(idx) = [];
            end
        end

        % Value changed function: 
        % SpecifymaxvalueofiterationsCheckBox
        function SpecifymaxvalueofiterationsValueChanged(app, event)
            if app.SpecifymaxvalueofiterationsCheckBox.Value
                app.MaxIter_EditField.Enable = 'on';
            else
                app.MaxIter_EditField.Enable = 'off';
            end
        end

        % Value changed function: SpecifytermtoleranceFunCheckBox
        function SpecifyterminationtoleranceFunValueChanged(app, event)
            if app.SpecifytermtoleranceFunCheckBox.Value
                app.TolFun_EditField.Enable = 'on';
            else
                app.TolFun_EditField.Enable = 'off';
            end
        end

        % Value changed function: SpecifytermtoleranceXCheckBox
        function SpecifyterminationtoleranceXValueChanged(app, event)
            if app.SpecifytermtoleranceXCheckBox.Value
                app.TolX_EditField.Enable = 'on';
            else
                app.TolX_EditField.Enable = 'off';
            end
        end

        % Value changed function: MaxIter_EditField
        function MaxIter_EditFieldValueChanged(app, event)
            app.maxIter = app.MaxIter_EditField.Value;
        end

        % Value changed function: TolFun_EditField
        function TolFun_EditFieldValueChanged(app, event)
            app.TolFun = app.TolFun_EditField.Value;
        end

        % Value changed function: TolX_EditField
        function TolX_EditFieldValueChanged(app, event)
            app.TolX = app.TolX_EditField.Value;  
        end

        % Button pushed function: RenormalizeallspectraButton
        function RenormalizeallspectraButtonPushed(app, event)
            files = app.dataplotted.fullFile;
            emissions = app.dataplotted.emission;
            app.SettingsPanel.Visible = 'off';
            app.SettingsButton.Value = 0;
            
            for i=2:length(files)
                loaddata(app, files(i), emissions(i), true, 1, true);
            end
            
            if app.fitPlotted
                plotfit(app);  
            end
        end

        % Button pushed function: ClearButton
        function ClearButtonPushed(app, event)
            resetColor(app);
            app.Ges_TextBox.Text = '';
            app.chromchart = 0;
        end

        % Value changed function: InfoButton
        function InfoButtonValueChanged(app, event)
             if app.InfoButton.Value
                 app.InfoButton.Enable = 'off';
                 drawnow;
                 
                 app.SettingsButton.Value = 0;
                 app.SettingsPanel.Visible = 'off';
                 app.InfoPanel.Visible = 'on';
                 app.InfoButton.Enable = 'on';
             else
                 app.InfoButton.Enable = 'off';
                 drawnow;
                 
                 app.InfoPanel.Visible = 'off';
                 app.InfoButton.Enable = 'on';
             end
        end

        % Value changed function: RobustFitOptionsDropDown
        function RobustFitOptionsDropDownValueChanged(app, event)
            app.robust = app.RobustFitOptionsDropDown.Value;
        end

        % Callback function
        function DownloadSampleSpectrumButton_organicPushed(app, event)
            app.DownloadSampleSpectrumButton_organic.Enable = 'off';
            drawnow;
            
            filter = '*.csv';
            [file, path] = uiputfile(filter, 'Select a destination for the sample data spectrum', 'sample_data_spectrum');
            fullFile = strcat(path, file);
            
            yourData = readmatrix('FCfit.csv', 'Range', 'A:B');
                    
            x = yourData(:,1);
            y = yourData(:,2);
            
            writetable(table(x,y), fullFile);
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.DownloadSampleSpectrumButton_organic.Enable = 'on';
        end

        % Callback function
        function FWHMButtonPushed(app, event)
            width = fwhm(app.xToFit_number, app.yToFit_number);
            msgbox(string(width));
        end

        % Value changed function: percentRuleDropDown
        function percentRuleDropDownValueChanged(app, event)
            app.percentrule = app.percentRuleDropDown.Value;
            E00calcchanged(app);
        end

        % Value changed function: ShowallGoFStatisticsCheckBox
        function ShowallGoFStatisticsCheckBoxValueChanged(app, event)
            value = app.ShowallGoFStatisticsCheckBox.Value;
            
            app.showgof = value;
            
            if ~value
                app.GoFLabel.Visible = 'off';
                app.Whatsthis_GoFButton.Visible = 'off';
            end
        end

        % Button pushed function: LoadEmissionData_292_Ir
        function LoadEmissionData_292_IrPushed(app, event)
            app.LoadEmissionData_292_Ir.Enable = 'off';
            drawnow;
            
            loaddata(app,'02_PL_Irpbt2acac_2MeTHF.txt', true, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_292_Ir.Enable = 'on';
        end

        % Button pushed function: LoadExcitationData_292_Ir
        function LoadExcitationData_292_IrPushed(app, event)
            app.LoadExcitationData_292_Ir.Enable = 'off';
            drawnow;
            
            loaddata(app,'02_Exc_Irpbt2acac_2MeTHF.txt', false, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadExcitationData_292_Ir.Enable = 'on';
        end

        % Button pushed function: LoadEmissionData_77_Ir
        function LoadEmissionData_77_IrButtonPushed(app, event)
            app.LoadEmissionData_77_Ir.Enable = 'off';
            drawnow;
            
            loaddata(app,'20_77K_PL_Irpbt2acac_2MeTHF.csv', true, true, 1, true);
            
            app.KButton_Other.Value = false;
            app.KButton_77.Value = true;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'off';
            app.T_value = 77;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_77_Ir.Enable = 'on';
        end

        % Button pushed function: LoadExcitationData_292_organic
        function LoadExcitationData_292_organicButtonPushed(app, event)
            app.LoadExcitationData_292_organic.Enable = 'off';
            drawnow;
            
            loaddata(app,'04_Exc_910diphenylanthracene_TOL.txt', false, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadExcitationData_292_organic.Enable = 'on';
        end

        % Button pushed function: LoadEmissionData_292_organic
        function LoadEmissionData_292_organicButtonPushed(app, event)
            app.LoadEmissionData_292_organic.Enable = 'off';
            drawnow;
            
            loaddata(app,'04_PL_910diphenylanthracene_TOL.txt', true, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_292_organic.Enable = 'on';
        end

        % Button pushed function: LoadExcitationData_292_Ru
        function LoadExcitationData_292_RuButtonPushed(app, event)
            app.LoadExcitationData_292_Ru.Enable = 'off';
            drawnow;
            
            loaddata(app,'292K_Excitation_Ru(bpy)3.csv', false, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadExcitationData_292_Ru.Enable = 'on';
        end

        % Button pushed function: LoadEmissionData_292_Ru
        function LoadEmissionData_292_RuButtonPushed(app, event)
            app.LoadEmissionData_292_Ru.Enable = 'off';
            drawnow;
            
            loaddata(app,'292K_Emission_Ru(bpy)3.csv', true, true, 1, true);
            
            app.KButton_Other.Value = true;
            app.KButton_77.Value = false;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'on';
            app.Temp_EditField.Value = 292;
            app.T_value = 292;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_292_Ru.Enable = 'on';
        end

        % Button pushed function: LoadEmissionData_77_Ru
        function LoadEmissionData_77_RuButtonPushed(app, event)
            app.LoadEmissionData_77_Ru.Enable = 'off';
            drawnow;
            
            loaddata(app,'77K_Emission_Ru(bpy)3.csv', true, true, 1, true);
            
            app.KButton_Other.Value = false;
            app.KButton_77.Value = true;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'off';
            app.T_value = 77;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_77_Ru.Enable = 'on';
        end

        % Button pushed function: LoadEmissionData_77_organic
        function LoadEmissionData_77_organicButtonPushed(app, event)
            app.LoadEmissionData_77_organic.Enable = 'off';
            drawnow;
            
            loaddata(app,'40_77K_PL_910diphenylanthracene_TOL.csv', true, true, 1, true);
            
            app.KButton_Other.Value = false;
            app.KButton_77.Value = true;
            app.KButton_298.Value = false;
            app.Temp_EditField.Enable = 'off';
            app.T_value = 77;
            drawnow;
            
            app.InfoPanel.Visible = 'off';
            app.InfoButton.Value = 0;
            app.LoadEmissionData_77_organic.Enable = 'on';
        end

        % Value changed function: AutomaticallycalculateCIE
        function AutomaticallycalculateCIEValueChanged(app, event)
            app.autoCIE = app.AutomaticallycalculateCIE.Value;
        end

        % Value changed function: GesUnitsDropDown
        function GesUnitsDropDownValueChanged(app, event)
            value = app.GesUnitsDropDown.Value;
            app.Ges_units = value;
            
            if isequal(value, 'eV')
                app.Ges_TextBoxLabel.Text = 'ÿGÿs (eV)';
            elseif isequal(value, 'J')
                app.Ges_TextBoxLabel.Text = 'ÿGÿs (J)';
            else 
                app.Ges_TextBoxLabel.Text = 'ÿGÿs (cmÿ¹)';
            end
            
            if ~isequal(app.Ges_TextBox.Text, '')
                calculateenergy(app);
            end
        end

        % Value changed function: Whatsthis_GoFButton
        function Whatsthis_GoFButtonValueChanged(app, event)
            if app.Whatsthis_GoFButton.Value
                app.GoFStatisticsPanel.Visible = 'on';
            else
                app.GoFStatisticsPanel.Visible = 'off';
            end
        end

        % Value changed function: OptimizationMethod_Switch
        function OptimizationMethod_SwitchValueChanged(app, event)
            value = app.OptimizationMethod_Switch.Value;
            app.optmethod = value;
            
            if isequal(value, 'LS')
                app.Thresholddataweighting_panel.Visible = 'off';
                app.Extremadataweighting_panel.Visible = 'off';
                app.maxIter = 50;
                app.MaxIter_EditField.Value = 50;
                app.RobustFitOptionsDropDown.Enable = 'on';
                app.ShowallGoFStatisticsCheckBox.Enable = 'on';
                app.ShowallGoFStatisticsCheckBox.Value = app.showgofstore;
                app.showgof = app.showgofstore;
            else
                app.Thresholddataweighting_panel.Visible = 'on';
                app.Extremadataweighting_panel.Visible = 'on';
                app.maxIter = 200;
                app.MaxIter_EditField.Value = 200;
                app.RobustFitOptionsDropDown.Enable = 'off';
                app.showgofstore = app.ShowallGoFStatisticsCheckBox.Value;
                app.ShowallGoFStatisticsCheckBox.Value = false;
                app.ShowallGoFStatisticsCheckBox.Enable = 'off';
                app.showgof = false;
                app.GoFLabel.Visible = 'off';
                app.GoFStatisticsPanel.Visible = 'off';
                app.Whatsthis_GoFButton.Visible = 'off';
            end
        end

        % Value changed function: multiCIECheckBox
        function multiCIECheckBoxValueChanged(app, event)
            app.multiCIE = app.multiCIECheckBox.Value;
            changeCIEicon(app);
        end

        % Value changed function: CIEPopoutStateButton
        function CIEPopoutStateButtonValueChanged(app, event)
            value = app.CIEPopoutStateButton.Value;
            
            app.CIEPopoutStateButton.Enable = 'off';
            drawnow;
            
            if ~isequal(value, 0)
                if app.multiCIE && height(app.dataplotted) > 5
                    delete(findobj(app.CIESelectPanel, 'Tag', 'cbToDelete'));
                    filenames = app.dataplotted.filename(2:end);
                    activefile = app.selectedfile;
                    app.ciespectra = {};
                    
                    for i=1:length(filenames)
                        b = (i .* 23);
                        
                        cb = uicheckbox(app.SelectSpectra_ScrollablePanel,...
                            'Position',[15 b 315 21], 'Tag', 'cbToDelete',...
                            'Text',filenames(i), ... 
                            'ValueChangedFcn', @pickspectra, ...
                            'FontColor', [1, 1, 1],...
                            'FontName', 'Arial', 'FontSize', 14); 
                        
                        if isequal(activefile{1}, filenames(i))
                            cb.Value = true;
                            app.ciespectra{end+1} = filenames(i);
                        end
                    end

                    app.CIESelectPanel.Visible = 'on';
                elseif app.multiCIE && height(app.dataplotted) > 2
                    delete(findobj(app.CIESelectPanel, 'Tag', 'cbToDelete'));
                    filenames = app.dataplotted.filename(2:end);
                    activefile = app.selectedfile;
                    app.ciespectra = {};
                    
                    for i=1:length(filenames)
                        b = 120 - (i .* 23);
                        
                        cb = uicheckbox(app.SelectSpectra_ScrollablePanel,...
                            'Position',[15 b 315 21], 'Tag', 'cbToDelete',...
                            'Text',filenames(i), ... 
                            'ValueChangedFcn', @pickspectra, ...
                            'FontColor', [1, 1, 1],...
                            'FontName', 'Arial', 'FontSize', 14); 
                        
                        if isequal(activefile{1}, filenames(i))
                            cb.Value = true;
                            app.ciespectra{end+1} = filenames(i);
                        end
                    end

                    app.CIESelectPanel.Visible = 'on';
                else
                    calculateCIEsingle(app);
                    try
                        app.chromchart.Visible = 'on';
                    catch                  
                    end
                end
            else
                app.CIESelectPanel.Visible = 'off';
                try
                    app.chromchart.Visible = 'off';
                catch
                end
            end
            
            changeCIEicon(app);
            app.CIEPopoutStateButton.Enable = 'on';
%             app.SelectSpectrumtoFitButton.Enable = 'on';
            
            function pickspectra(src, ~)
                if src.Value
                    app.ciespectra{end+1} = src.Text;
                else
                    ciespec = app.ciespectra;
                    ciespec(ciespec==src.Text) = [];
                    app.ciespectra = ciespec;
                end
            end
        end

        % Value changed function: Custombounds_checkBox
        function Custombounds_checkBoxValueChanged(app, event)
            if app.Custombounds_checkBox.Value
                resetBounds(app);
                
                app.E0_bounds_stateButton.Visible = 'on';
                app.v05_bounds_stateButton.Visible = 'on';
                app.S1_bounds_stateButton.Visible = 'on';
                app.hw1_bounds_stateButton.Visible = 'on';
                app.S2_bounds_stateButton.Visible = 'on';
                app.hw2_bounds_stateButton.Visible = 'on';
                
                app.ResetCustomBoundsButton.Enable = 'on';
            else
                app.E0_bounds_stateButton.Visible = 'off';
                app.v05_bounds_stateButton.Visible = 'off';
                app.S1_bounds_stateButton.Visible = 'off';
                app.hw1_bounds_stateButton.Visible = 'off';
                app.S2_bounds_stateButton.Visible = 'off';
                app.hw2_bounds_stateButton.Visible = 'off';
                
                app.E0CustomBoundsPanel.Visible = 'off';
                app.v05CustomBoundsPanel.Visible = 'off';
                app.S1CustomBoundsPanel.Visible = 'off';
                app.hw1CustomBoundsPanel.Visible = 'off';
                app.S2CustomBoundsPanel.Visible = 'off';
                app.hw2CustomBoundsPanel.Visible = 'off';          
                
                app.ResetCustomBoundsButton.Enable = 'off';
            end
        end

        % Value changed function: E0_bounds_stateButton
        function E0_bounds_stateButtonValueChanged(app, event)
            if app.E0_bounds_stateButton.Value
                app.E0CustomBoundsPanel.Visible = 'on';
            else
                app.E0CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: v05_bounds_stateButton
        function v05_bounds_stateButtonValueChanged(app, event)
            if app.v05_bounds_stateButton.Value
                app.v05CustomBoundsPanel.Visible = 'on';
            else
                app.v05CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: S1_bounds_stateButton
        function S1_bounds_stateButtonValueChanged(app, event)
            if app.S1_bounds_stateButton.Value
                app.S1CustomBoundsPanel.Visible = 'on';
            else
                app.S1CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: hw1_bounds_stateButton
        function hw1_bounds_stateButtonValueChanged(app, event)
            if app.hw1_bounds_stateButton.Value
                app.hw1CustomBoundsPanel.Visible = 'on';
            else
                app.hw1CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: S2_bounds_stateButton
        function S2_bounds_stateButtonValueChanged(app, event)
            if app.S2_bounds_stateButton.Value
                app.S2CustomBoundsPanel.Visible = 'on';
            else
                app.S2CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: hw2_bounds_stateButton
        function hw2_bounds_stateButtonValueChanged(app, event)
            if app.hw2_bounds_stateButton.Value
                app.hw2CustomBoundsPanel.Visible = 'on';
            else
                app.hw2CustomBoundsPanel.Visible = 'off';
            end
        end

        % Value changed function: DisplayDiagram_StateButton
        function DisplayDiagram_StateButtonValueChanged(app, event)
            if app.DisplayDiagram_StateButton.Value
                app.DisplayDiagram_StateButton.Enable = 'off';
                drawnow;
                
                calculateCIEmulti(app);
                set(findobj('Name', 'Chromaticity Diagram'), 'Visible', 'on');
                app.DisplayDiagram_StateButton.Text = 'Hide Diagram';
                drawnow;
                
                app.DisplayDiagram_StateButton.Enable = 'on';
            else
                set(findobj('Name', 'Chromaticity Diagram'), 'Visible', 'off');
                app.DisplayDiagram_StateButton.Text = 'Display Diagram';
            end
        end

        % Button pushed function: ExportValuesButton
        function ExportValuesButtonPushed(app, event)
            app.ExportValuesButton.Enable = 'off';
            drawnow;
            
            exportCoords(app);
            drawnow;
            
            app.ExportValuesButton.Enable = 'on';
        end

        % Button pushed function: ResetCustomBoundsButton
        function ResetCustomBoundsButtonPushed(app, event)
            resetBounds(app);
        end

        % Value changed function: WeightextremaCheckBox
        function WeightextremaCheckBoxValueChanged(app, event)
            if app.WeightextremaCheckBox.Value
                app.Fillsalientpoints_checkBox.Enable = 'on';
                app.ExtremaWeight_EditField.Enable = 'on';
                app.Numberofpoints_EditField.Enable = 'on';
            else
                app.Fillsalientpoints_checkBox.Enable = 'off';
                app.ExtremaWeight_EditField.Enable = 'off';
                app.Numberofpoints_EditField.Enable = 'off';
            end
        end

        % Value changed function: Fillsalientpoints_checkBox
        function Fillsalientpoints_checkBoxValueChanged(app, event)
            if ~app.Fillsalientpoints_checkBox.Value
               delete(findall(app.UIAxes, 'Tag', 'Highlightedpoint')); 
            end
        end

        % Value changed function: Xaxiswithfit_checkBox
        function Xaxiswithfit_checkBoxValueChanged(app, event)
            if ~app.Xaxiswithfit_checkBox.Value
                set(app.UIAxes, 'XLimMode', 'auto');
            end
        end

        % Value changed function: Enablecolor_checkBox
        function Enablecolor_checkBoxValueChanged(app, event)
            app.DisabledLabel.Visible = ~app.Enablecolor_checkBox.Value;
        end

        % Button pushed function: ColorValuesButton
        function ColorValuesButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataButton.Value = 0;
            drawnow;
            
            exportColor(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Button pushed function: ChromaticityDiagramButton
        function ChromaticityDiagramButtonPushed(app, event)
            app.ExportDataButton.Enable = 'off';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataButton.Value = 0;
            drawnow;
            
            exportChromaticity(app);
            
            app.ExportDataButton.Enable = 'on';
        end

        % Value changed function: WhitePoint_DropDown
        function WhitePoint_DropDownValueChanged(app, event)
            if ~isequal(app.chromaticity_TextBox.Text, '')
               calculateCIEsingle(app); 
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create Franck_Condon_Lineshape_Analyser and hide until all components are created
            app.Franck_Condon_Lineshape_Analyser = uifigure('Visible', 'off');
            app.Franck_Condon_Lineshape_Analyser.AutoResizeChildren = 'off';
            app.Franck_Condon_Lineshape_Analyser.Color = [0.2196 0.2196 0.2196];
            app.Franck_Condon_Lineshape_Analyser.Colormap = [0.2431 0.149 0.6588;0.251 0.1647 0.7059;0.2588 0.1804 0.7529;0.2627 0.1961 0.7961;0.2706 0.2157 0.8353;0.2745 0.2353 0.8706;0.2784 0.2549 0.898;0.2784 0.2784 0.9216;0.2824 0.302 0.9412;0.2784 0.3216 0.9608;0.2784 0.3451 0.9725;0.2745 0.3686 0.9843;0.2706 0.3882 0.9922;0.2588 0.4118 0.9961;0.2431 0.4353 1;0.2196 0.4588 0.9961;0.1961 0.4863 0.9882;0.1843 0.5059 0.9804;0.1804 0.5294 0.9686;0.1765 0.549 0.9529;0.1686 0.5686 0.9373;0.1529 0.5922 0.9216;0.1451 0.6078 0.9098;0.1373 0.6275 0.898;0.1255 0.6471 0.8902;0.1098 0.6627 0.8745;0.0941 0.6784 0.8588;0.0706 0.6941 0.8392;0.0314 0.7098 0.8157;0.0039 0.7216 0.7922;0.0078 0.7294 0.7647;0.0431 0.7412 0.7412;0.098 0.749 0.7137;0.1412 0.7569 0.6824;0.1725 0.7686 0.6549;0.1922 0.7765 0.6235;0.2157 0.7843 0.5922;0.2471 0.7922 0.5569;0.2902 0.7961 0.5176;0.3412 0.8 0.4784;0.3922 0.8039 0.4353;0.4471 0.8039 0.3922;0.5059 0.8 0.349;0.5608 0.7961 0.3059;0.6157 0.7882 0.2627;0.6706 0.7804 0.2235;0.7255 0.7686 0.1922;0.7725 0.7608 0.1647;0.8196 0.749 0.1529;0.8627 0.7412 0.1608;0.902 0.7333 0.1765;0.9412 0.7294 0.2118;0.9725 0.7294 0.2392;0.9961 0.7451 0.2353;0.9961 0.7647 0.2196;0.9961 0.7882 0.2039;0.9882 0.8118 0.1882;0.9804 0.8392 0.1765;0.9686 0.8627 0.1647;0.9608 0.8902 0.1529;0.9608 0.9137 0.1412;0.9647 0.9373 0.1255;0.9686 0.9608 0.1059;0.9765 0.9843 0.0824];
            app.Franck_Condon_Lineshape_Analyser.Position = [100 100 1070 819];
            app.Franck_Condon_Lineshape_Analyser.Name = 'ARL Spectral Fitting';
            app.Franck_Condon_Lineshape_Analyser.Scrollable = 'on';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Franck_Condon_Lineshape_Analyser);
            title(app.UIAxes, 'Relative Intensity vs. Wavenumber')
            xlabel(app.UIAxes, 'Wavenumber (cmÿ¹)')
            ylabel(app.UIAxes, 'Relative Intensity')
            app.UIAxes.PlotBoxAspectRatio = [1.73628041881129 1 1];
            app.UIAxes.FontName = 'Arial Rounded MT Bold';
            app.UIAxes.FontSize = 14;
            app.UIAxes.XLim = [11000 33500];
            app.UIAxes.YLim = [0 1.2];
            app.UIAxes.XDir = 'reverse';
            app.UIAxes.ClippingStyle = 'rectangle';
            app.UIAxes.ColorOrder = [0 0.4471 0.7412;0.851 0.3255 0.098;0.9294 0.6941 0.1255;1 0.4196 0.6824;0.4667 0.6745 0.1882;0.6941 0.0784 0.9608;0.6392 0.0784 0.1804];
            app.UIAxes.Box = 'on';
            app.UIAxes.XColor = [0.651 0.651 0.651];
            app.UIAxes.XMinorTick = 'on';
            app.UIAxes.YColor = [0.651 0.651 0.651];
            app.UIAxes.YTick = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
            app.UIAxes.YMinorTick = 'on';
            app.UIAxes.LineWidth = 1.5;
            app.UIAxes.Color = [0.2196 0.2196 0.2196];
            app.UIAxes.TitleFontSizeMultiplier = 1.4;
            app.UIAxes.BackgroundColor = [0.2196 0.2196 0.2196];
            app.UIAxes.Position = [15 415 686 396];

            % Create SettingsButton
            app.SettingsButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.SettingsButton.ValueChangedFcn = createCallbackFcn(app, @SettingsButtonValueChanged, true);
            app.SettingsButton.Icon = 'Gear Icon (New).png';
            app.SettingsButton.Text = 'Settings';
            app.SettingsButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.SettingsButton.FontName = 'Arial Hebrew Scholar';
            app.SettingsButton.FontSize = 15;
            app.SettingsButton.FontColor = [0.651 0.651 0.6471];
            app.SettingsButton.Position = [925 787 136 24];

            % Create FitParametersPanel
            app.FitParametersPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.FitParametersPanel.AutoResizeChildren = 'off';
            app.FitParametersPanel.ForegroundColor = [0.651 0.651 0.651];
            app.FitParametersPanel.TitlePosition = 'centertop';
            app.FitParametersPanel.Title = 'Fit Parameters';
            app.FitParametersPanel.BackgroundColor = [0.2196 0.2196 0.2196];
            app.FitParametersPanel.FontName = 'Arial Rounded MT Bold';
            app.FitParametersPanel.FontWeight = 'bold';
            app.FitParametersPanel.FontSize = 16;
            app.FitParametersPanel.Position = [32 11 669 385];

            % Create S_editField
            app.S_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.S_editField.Limits = [0 3];
            app.S_editField.ValueDisplayFormat = '%.2f';
            app.S_editField.ValueChangedFcn = createCallbackFcn(app, @S_editFieldValueChanged, true);
            app.S_editField.FontName = 'Arial';
            app.S_editField.FontColor = [0.651 0.651 0.651];
            app.S_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S_editField.Position = [127 157 100 22];
            app.S_editField.Value = 1;

            % Create unitlessLabel
            app.unitlessLabel = uilabel(app.FitParametersPanel);
            app.unitlessLabel.HorizontalAlignment = 'center';
            app.unitlessLabel.FontName = 'Arial';
            app.unitlessLabel.FontColor = [0.651 0.651 0.651];
            app.unitlessLabel.Position = [256 209 54 22];
            app.unitlessLabel.Text = '(unitless)';

            % Create S_slider
            app.S_slider = uislider(app.FitParametersPanel);
            app.S_slider.Limits = [0 3];
            app.S_slider.MajorTicks = [0 1.5 3];
            app.S_slider.MajorTickLabels = {'0', '1.0', '3.0'};
            app.S_slider.ValueChangedFcn = createCallbackFcn(app, @S_sliderValueChanged, true);
            app.S_slider.FontName = 'Arial';
            app.S_slider.FontColor = [0.651 0.651 0.651];
            app.S_slider.Position = [76 217 162 3];
            app.S_slider.Value = 1;

            % Create cmLabel_2
            app.cmLabel_2 = uilabel(app.FitParametersPanel);
            app.cmLabel_2.HorizontalAlignment = 'center';
            app.cmLabel_2.FontName = 'Arial';
            app.cmLabel_2.FontColor = [0.651 0.651 0.651];
            app.cmLabel_2.Position = [587 211 40 22];
            app.cmLabel_2.Text = '(cmÿ¹)';

            % Create hw_slider
            app.hw_slider = uislider(app.FitParametersPanel);
            app.hw_slider.Limits = [0 4000];
            app.hw_slider.MajorTicks = [0 2000 4000];
            app.hw_slider.MajorTickLabels = {'0', '2000', '4000'};
            app.hw_slider.ValueChangedFcn = createCallbackFcn(app, @hw_sliderValueChanged, true);
            app.hw_slider.FontName = 'Arial';
            app.hw_slider.FontColor = [0.651 0.651 0.651];
            app.hw_slider.Position = [419 218 162 3];
            app.hw_slider.Value = 1400;

            % Create E_editField
            app.E_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.E_editField.Limits = [0 100000];
            app.E_editField.RoundFractionalValues = 'on';
            app.E_editField.ValueDisplayFormat = '%.0f';
            app.E_editField.ValueChangedFcn = createCallbackFcn(app, @E_editFieldValueChanged, true);
            app.E_editField.FontName = 'Arial';
            app.E_editField.FontColor = [0.651 0.651 0.651];
            app.E_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E_editField.Position = [127 276 100 22];
            app.E_editField.Value = 20000;

            % Create cmLabel
            app.cmLabel = uilabel(app.FitParametersPanel);
            app.cmLabel.HorizontalAlignment = 'center';
            app.cmLabel.FontName = 'Arial';
            app.cmLabel.FontColor = [0.651 0.651 0.6471];
            app.cmLabel.Position = [248 329 70 22];
            app.cmLabel.Text = '(×10ÿ cmÿ¹)';

            % Create E_slider
            app.E_slider = uislider(app.FitParametersPanel);
            app.E_slider.Limits = [0 100000];
            app.E_slider.MajorTicks = [0 50000 100000];
            app.E_slider.MajorTickLabels = {'0', '5', '10', ''};
            app.E_slider.ValueChangedFcn = createCallbackFcn(app, @E_sliderValueChanged, true);
            app.E_slider.FontName = 'Arial';
            app.E_slider.FontColor = [0.651 0.651 0.6471];
            app.E_slider.Position = [76 339 162 3];
            app.E_slider.Value = 20000;

            % Create hw1_label
            app.hw1_label = uilabel(app.FitParametersPanel);
            app.hw1_label.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw1_label.FontName = 'Arial';
            app.hw1_label.FontSize = 16;
            app.hw1_label.FontWeight = 'bold';
            app.hw1_label.FontColor = [0.651 0.651 0.651];
            app.hw1_label.Position = [367 207 38 24];
            app.hw1_label.Text = 'ÿÿ';

            % Create S1_label
            app.S1_label = uilabel(app.FitParametersPanel);
            app.S1_label.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S1_label.FontName = 'Arial';
            app.S1_label.FontSize = 16;
            app.S1_label.FontWeight = 'bold';
            app.S1_label.FontColor = [0.651 0.651 0.651];
            app.S1_label.Position = [49 204 25 32];
            app.S1_label.Text = 'S';

            % Create E_minus_coarse
            app.E_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.E_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @E_minus_coarseButtonPushed, true);
            app.E_minus_coarse.Icon = 'Minus Icon (New).png';
            app.E_minus_coarse.IconAlignment = 'center';
            app.E_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E_minus_coarse.FontName = 'Arial';
            app.E_minus_coarse.FontSize = 14;
            app.E_minus_coarse.FontWeight = 'bold';
            app.E_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.E_minus_coarse.Position = [77 276 44 22];
            app.E_minus_coarse.Text = '';

            % Create E_plus_coarse
            app.E_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.E_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @E_plus_coarseButtonPushed, true);
            app.E_plus_coarse.Icon = 'Plus Icon (New).png';
            app.E_plus_coarse.IconAlignment = 'center';
            app.E_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E_plus_coarse.FontName = 'Arial';
            app.E_plus_coarse.FontSize = 14;
            app.E_plus_coarse.FontWeight = 'bold';
            app.E_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.E_plus_coarse.Position = [233 276 44 22];
            app.E_plus_coarse.Text = '';

            % Create E_minus_fine
            app.E_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.E_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @E_minus_fineButtonPushed, true);
            app.E_minus_fine.Icon = 'Minus Icon (New).png';
            app.E_minus_fine.IconAlignment = 'center';
            app.E_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E_minus_fine.FontName = 'Arial';
            app.E_minus_fine.FontSize = 14;
            app.E_minus_fine.FontWeight = 'bold';
            app.E_minus_fine.FontColor = [0.651 0.651 0.651];
            app.E_minus_fine.Position = [41 276 30 22];
            app.E_minus_fine.Text = '';

            % Create E_plus_fine
            app.E_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.E_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @E_plus_fineButtonPushed, true);
            app.E_plus_fine.Icon = 'Plus Icon (New).png';
            app.E_plus_fine.IconAlignment = 'center';
            app.E_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E_plus_fine.FontName = 'Arial';
            app.E_plus_fine.FontSize = 14;
            app.E_plus_fine.FontWeight = 'bold';
            app.E_plus_fine.FontColor = [0.651 0.651 0.651];
            app.E_plus_fine.Position = [283 276 30 22];
            app.E_plus_fine.Text = '';

            % Create S_minus_coarse
            app.S_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.S_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @S_minus_coarseButtonPushed, true);
            app.S_minus_coarse.Icon = 'Minus Icon (New).png';
            app.S_minus_coarse.IconAlignment = 'center';
            app.S_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S_minus_coarse.FontName = 'Arial';
            app.S_minus_coarse.FontSize = 14;
            app.S_minus_coarse.FontWeight = 'bold';
            app.S_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.S_minus_coarse.Position = [77 157 44 22];
            app.S_minus_coarse.Text = '';

            % Create S_plus_coarse
            app.S_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.S_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @S_plus_coarseButtonPushed, true);
            app.S_plus_coarse.Icon = 'Plus Icon (New).png';
            app.S_plus_coarse.IconAlignment = 'center';
            app.S_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S_plus_coarse.FontName = 'Arial';
            app.S_plus_coarse.FontSize = 14;
            app.S_plus_coarse.FontWeight = 'bold';
            app.S_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.S_plus_coarse.Position = [233 157 44 22];
            app.S_plus_coarse.Text = '';

            % Create S_minus_fine
            app.S_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.S_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @S_minus_fineButtonPushed, true);
            app.S_minus_fine.Icon = 'Minus Icon (New).png';
            app.S_minus_fine.IconAlignment = 'center';
            app.S_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S_minus_fine.FontName = 'Arial';
            app.S_minus_fine.FontSize = 14;
            app.S_minus_fine.FontWeight = 'bold';
            app.S_minus_fine.FontColor = [0.651 0.651 0.651];
            app.S_minus_fine.Position = [41 157 30 22];
            app.S_minus_fine.Text = '';

            % Create S_plus_fine
            app.S_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.S_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @S_plus_fineButtonPushed, true);
            app.S_plus_fine.Icon = 'Plus Icon (New).png';
            app.S_plus_fine.IconAlignment = 'center';
            app.S_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S_plus_fine.FontName = 'Arial';
            app.S_plus_fine.FontSize = 14;
            app.S_plus_fine.FontWeight = 'bold';
            app.S_plus_fine.FontColor = [0.651 0.651 0.651];
            app.S_plus_fine.Position = [283 157 30 22];
            app.S_plus_fine.Text = '';

            % Create hw_minus_coarse
            app.hw_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.hw_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @hw_minus_coarseButtonPushed, true);
            app.hw_minus_coarse.Icon = 'Minus Icon (New).png';
            app.hw_minus_coarse.IconAlignment = 'center';
            app.hw_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw_minus_coarse.FontName = 'Arial';
            app.hw_minus_coarse.FontSize = 14;
            app.hw_minus_coarse.FontWeight = 'bold';
            app.hw_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.hw_minus_coarse.Position = [398 157 44 22];
            app.hw_minus_coarse.Text = '';

            % Create hw_plus_coarse
            app.hw_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.hw_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @hw_plus_coarseButtonPushed, true);
            app.hw_plus_coarse.Icon = 'Plus Icon (New).png';
            app.hw_plus_coarse.IconAlignment = 'center';
            app.hw_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw_plus_coarse.FontName = 'Arial';
            app.hw_plus_coarse.FontSize = 14;
            app.hw_plus_coarse.FontWeight = 'bold';
            app.hw_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.hw_plus_coarse.Position = [554 157 44 22];
            app.hw_plus_coarse.Text = '';

            % Create hw_minus_fine
            app.hw_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.hw_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @hw_minus_fineButtonPushed, true);
            app.hw_minus_fine.Icon = 'Minus Icon (New).png';
            app.hw_minus_fine.IconAlignment = 'center';
            app.hw_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw_minus_fine.FontName = 'Arial';
            app.hw_minus_fine.FontSize = 14;
            app.hw_minus_fine.FontWeight = 'bold';
            app.hw_minus_fine.FontColor = [0.651 0.651 0.651];
            app.hw_minus_fine.Position = [362 157 30 22];
            app.hw_minus_fine.Text = '';

            % Create hw_plus_fine
            app.hw_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.hw_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @hw_plus_fineButtonPushed, true);
            app.hw_plus_fine.Icon = 'Plus Icon (New).png';
            app.hw_plus_fine.IconAlignment = 'center';
            app.hw_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw_plus_fine.FontName = 'Arial';
            app.hw_plus_fine.FontSize = 14;
            app.hw_plus_fine.FontWeight = 'bold';
            app.hw_plus_fine.FontColor = [0.651 0.651 0.651];
            app.hw_plus_fine.Position = [604 157 30 22];
            app.hw_plus_fine.Text = '';

            % Create v05_editField
            app.v05_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.v05_editField.Limits = [0 5000];
            app.v05_editField.ValueDisplayFormat = '%.0f';
            app.v05_editField.ValueChangedFcn = createCallbackFcn(app, @v05_editFieldValueChanged, true);
            app.v05_editField.FontName = 'Arial';
            app.v05_editField.FontColor = [0.651 0.651 0.6471];
            app.v05_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_editField.Position = [448 276 100 22];
            app.v05_editField.Value = 1000;

            % Create v05_minus_coarse
            app.v05_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.v05_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @v05_minus_coarseButtonPushed, true);
            app.v05_minus_coarse.Icon = 'Minus Icon (New).png';
            app.v05_minus_coarse.IconAlignment = 'center';
            app.v05_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_minus_coarse.FontName = 'Arial';
            app.v05_minus_coarse.FontSize = 14;
            app.v05_minus_coarse.FontWeight = 'bold';
            app.v05_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.v05_minus_coarse.Position = [398 276 44 22];
            app.v05_minus_coarse.Text = '';

            % Create v05_plus_coarse
            app.v05_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.v05_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @v05_plus_coarseButtonPushed, true);
            app.v05_plus_coarse.Icon = 'Plus Icon (New).png';
            app.v05_plus_coarse.IconAlignment = 'center';
            app.v05_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_plus_coarse.FontName = 'Arial';
            app.v05_plus_coarse.FontSize = 14;
            app.v05_plus_coarse.FontWeight = 'bold';
            app.v05_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.v05_plus_coarse.Position = [554 276 44 22];
            app.v05_plus_coarse.Text = '';

            % Create v05_minus_fine
            app.v05_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.v05_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @v05_minus_fineButtonPushed, true);
            app.v05_minus_fine.Icon = 'Minus Icon (New).png';
            app.v05_minus_fine.IconAlignment = 'center';
            app.v05_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_minus_fine.FontName = 'Arial';
            app.v05_minus_fine.FontSize = 14;
            app.v05_minus_fine.FontWeight = 'bold';
            app.v05_minus_fine.FontColor = [0.651 0.651 0.651];
            app.v05_minus_fine.Position = [362 276 30 22];
            app.v05_minus_fine.Text = '';

            % Create v05_plus_fine
            app.v05_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.v05_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @v05_plus_fineButtonPushed, true);
            app.v05_plus_fine.Icon = 'Plus Icon (New).png';
            app.v05_plus_fine.IconAlignment = 'center';
            app.v05_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_plus_fine.FontName = 'Arial';
            app.v05_plus_fine.FontSize = 14;
            app.v05_plus_fine.FontWeight = 'bold';
            app.v05_plus_fine.FontColor = [0.651 0.651 0.651];
            app.v05_plus_fine.Position = [604 276 30 22];
            app.v05_plus_fine.Text = '';

            % Create cmLabel_3
            app.cmLabel_3 = uilabel(app.FitParametersPanel);
            app.cmLabel_3.HorizontalAlignment = 'center';
            app.cmLabel_3.FontName = 'Arial';
            app.cmLabel_3.FontColor = [0.651 0.651 0.6471];
            app.cmLabel_3.Position = [587 329 40 22];
            app.cmLabel_3.Text = '(cmÿ¹)';

            % Create Label
            app.Label = uilabel(app.FitParametersPanel);
            app.Label.HorizontalAlignment = 'right';
            app.Label.FontName = 'Arial';
            app.Label.FontSize = 16;
            app.Label.FontWeight = 'bold';
            app.Label.FontColor = [0.651 0.651 0.651];
            app.Label.Position = [362 327 43 25];
            app.Label.Text = 'ÿÿÿ½';

            % Create v05_slider
            app.v05_slider = uislider(app.FitParametersPanel);
            app.v05_slider.Limits = [0 5000];
            app.v05_slider.MajorTicks = [0 2500 5000];
            app.v05_slider.ValueChangedFcn = createCallbackFcn(app, @v05_sliderValueChanged, true);
            app.v05_slider.FontName = 'Arial';
            app.v05_slider.FontColor = [0.651 0.651 0.651];
            app.v05_slider.Position = [419 339 162 3];
            app.v05_slider.Value = 1000;

            % Create unitlessLabel_2
            app.unitlessLabel_2 = uilabel(app.FitParametersPanel);
            app.unitlessLabel_2.HorizontalAlignment = 'center';
            app.unitlessLabel_2.FontName = 'Arial';
            app.unitlessLabel_2.FontColor = [0.651 0.651 0.651];
            app.unitlessLabel_2.Position = [256 95 54 22];
            app.unitlessLabel_2.Text = '(unitless)';

            % Create SLabel
            app.SLabel = uilabel(app.FitParametersPanel);
            app.SLabel.HorizontalAlignment = 'right';
            app.SLabel.FontName = 'Arial';
            app.SLabel.FontSize = 16;
            app.SLabel.FontWeight = 'bold';
            app.SLabel.FontColor = [0.651 0.651 0.651];
            app.SLabel.Position = [41 96 25 22];
            app.SLabel.Text = 'Sÿ';

            % Create S2_slider
            app.S2_slider = uislider(app.FitParametersPanel);
            app.S2_slider.Limits = [0 3];
            app.S2_slider.MajorTicks = [0 1.5 3];
            app.S2_slider.MajorTickLabels = {'0.0', '1.5', '3.0', ''};
            app.S2_slider.ValueChangedFcn = createCallbackFcn(app, @S2_sliderValueChanged, true);
            app.S2_slider.FontName = 'Arial';
            app.S2_slider.FontColor = [0.651 0.651 0.651];
            app.S2_slider.Position = [76 104 162 3];
            app.S2_slider.Value = 1;

            % Create S2_editField
            app.S2_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.S2_editField.Limits = [0 3];
            app.S2_editField.ValueDisplayFormat = '%.2f';
            app.S2_editField.ValueChangedFcn = createCallbackFcn(app, @S2_editFieldValueChanged, true);
            app.S2_editField.FontName = 'Arial';
            app.S2_editField.FontColor = [0.651 0.651 0.651];
            app.S2_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_editField.Position = [127 45 100 22];
            app.S2_editField.Value = 1;

            % Create S2_minus_coarse
            app.S2_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.S2_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @S2_minus_coarseButtonPushed, true);
            app.S2_minus_coarse.Icon = 'Minus Icon (New).png';
            app.S2_minus_coarse.IconAlignment = 'center';
            app.S2_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_minus_coarse.FontName = 'Arial';
            app.S2_minus_coarse.FontSize = 14;
            app.S2_minus_coarse.FontWeight = 'bold';
            app.S2_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.S2_minus_coarse.Position = [77 45 44 22];
            app.S2_minus_coarse.Text = '';

            % Create S2_plus_coarse
            app.S2_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.S2_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @S2_plus_coarseButtonPushed, true);
            app.S2_plus_coarse.Icon = 'Plus Icon (New).png';
            app.S2_plus_coarse.IconAlignment = 'center';
            app.S2_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_plus_coarse.FontName = 'Arial';
            app.S2_plus_coarse.FontSize = 14;
            app.S2_plus_coarse.FontWeight = 'bold';
            app.S2_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.S2_plus_coarse.Position = [233 45 44 22];
            app.S2_plus_coarse.Text = '';

            % Create S2_minus_fine
            app.S2_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.S2_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @S2_minus_fineButtonPushed, true);
            app.S2_minus_fine.Icon = 'Minus Icon (New).png';
            app.S2_minus_fine.IconAlignment = 'center';
            app.S2_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_minus_fine.FontName = 'Arial';
            app.S2_minus_fine.FontSize = 14;
            app.S2_minus_fine.FontWeight = 'bold';
            app.S2_minus_fine.FontColor = [0.651 0.651 0.651];
            app.S2_minus_fine.Position = [41 45 30 22];
            app.S2_minus_fine.Text = '';

            % Create S2_plus_fine
            app.S2_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.S2_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @S2_plus_fineButtonPushed, true);
            app.S2_plus_fine.Icon = 'Plus Icon (New).png';
            app.S2_plus_fine.IconAlignment = 'center';
            app.S2_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_plus_fine.FontName = 'Arial';
            app.S2_plus_fine.FontSize = 14;
            app.S2_plus_fine.FontWeight = 'bold';
            app.S2_plus_fine.FontColor = [0.651 0.651 0.651];
            app.S2_plus_fine.Position = [283 45 30 22];
            app.S2_plus_fine.Text = '';

            % Create cmLabel_4
            app.cmLabel_4 = uilabel(app.FitParametersPanel);
            app.cmLabel_4.HorizontalAlignment = 'center';
            app.cmLabel_4.FontName = 'Arial';
            app.cmLabel_4.FontColor = [0.651 0.651 0.651];
            app.cmLabel_4.Position = [587 94 40 22];
            app.cmLabel_4.Text = '(cmÿ¹)';

            % Create Label_3
            app.Label_3 = uilabel(app.FitParametersPanel);
            app.Label_3.FontName = 'Arial';
            app.Label_3.FontSize = 16;
            app.Label_3.FontWeight = 'bold';
            app.Label_3.FontColor = [0.651 0.651 0.651];
            app.Label_3.Position = [367 93 35 24];
            app.Label_3.Text = 'ÿÿÿ';

            % Create hw2_slider
            app.hw2_slider = uislider(app.FitParametersPanel);
            app.hw2_slider.Limits = [0 4000];
            app.hw2_slider.MajorTicks = [0 2000 4000];
            app.hw2_slider.MajorTickLabels = {'0', '2000', '4000'};
            app.hw2_slider.ValueChangedFcn = createCallbackFcn(app, @hw2_sliderValueChanged, true);
            app.hw2_slider.FontName = 'Arial';
            app.hw2_slider.FontColor = [0.651 0.651 0.651];
            app.hw2_slider.Position = [419 104 162 3];
            app.hw2_slider.Value = 700;

            % Create hw2_editField
            app.hw2_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.hw2_editField.Limits = [0 4000];
            app.hw2_editField.ValueDisplayFormat = '%.0f';
            app.hw2_editField.ValueChangedFcn = createCallbackFcn(app, @hw2_editFieldValueChanged, true);
            app.hw2_editField.FontName = 'Arial';
            app.hw2_editField.FontColor = [0.651 0.651 0.651];
            app.hw2_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_editField.Position = [448 45 100 22];
            app.hw2_editField.Value = 700;

            % Create hw2_minus_coarse
            app.hw2_minus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.hw2_minus_coarse.ButtonPushedFcn = createCallbackFcn(app, @hw2_minus_coarseButtonPushed, true);
            app.hw2_minus_coarse.Icon = 'Minus Icon (New).png';
            app.hw2_minus_coarse.IconAlignment = 'center';
            app.hw2_minus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_minus_coarse.FontName = 'Arial';
            app.hw2_minus_coarse.FontSize = 14;
            app.hw2_minus_coarse.FontWeight = 'bold';
            app.hw2_minus_coarse.FontColor = [0.651 0.651 0.651];
            app.hw2_minus_coarse.Position = [398 45 44 22];
            app.hw2_minus_coarse.Text = '';

            % Create hw2_plus_coarse
            app.hw2_plus_coarse = uibutton(app.FitParametersPanel, 'push');
            app.hw2_plus_coarse.ButtonPushedFcn = createCallbackFcn(app, @hw2_plus_coarseButtonPushed, true);
            app.hw2_plus_coarse.Icon = 'Plus Icon (New).png';
            app.hw2_plus_coarse.IconAlignment = 'center';
            app.hw2_plus_coarse.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_plus_coarse.FontName = 'Arial';
            app.hw2_plus_coarse.FontSize = 14;
            app.hw2_plus_coarse.FontWeight = 'bold';
            app.hw2_plus_coarse.FontColor = [0.651 0.651 0.651];
            app.hw2_plus_coarse.Position = [554 45 44 22];
            app.hw2_plus_coarse.Text = '';

            % Create hw2_minus_fine
            app.hw2_minus_fine = uibutton(app.FitParametersPanel, 'push');
            app.hw2_minus_fine.ButtonPushedFcn = createCallbackFcn(app, @hw2_minus_fineButtonPushed, true);
            app.hw2_minus_fine.Icon = 'Minus Icon (New).png';
            app.hw2_minus_fine.IconAlignment = 'center';
            app.hw2_minus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_minus_fine.FontName = 'Arial';
            app.hw2_minus_fine.FontSize = 14;
            app.hw2_minus_fine.FontWeight = 'bold';
            app.hw2_minus_fine.FontColor = [0.651 0.651 0.651];
            app.hw2_minus_fine.Position = [362 45 30 22];
            app.hw2_minus_fine.Text = '';

            % Create hw2_plus_fine
            app.hw2_plus_fine = uibutton(app.FitParametersPanel, 'push');
            app.hw2_plus_fine.ButtonPushedFcn = createCallbackFcn(app, @hw2_plus_fineButtonPushed, true);
            app.hw2_plus_fine.Icon = 'Plus Icon (New).png';
            app.hw2_plus_fine.IconAlignment = 'center';
            app.hw2_plus_fine.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_plus_fine.FontName = 'Arial';
            app.hw2_plus_fine.FontSize = 14;
            app.hw2_plus_fine.FontWeight = 'bold';
            app.hw2_plus_fine.FontColor = [0.651 0.651 0.651];
            app.hw2_plus_fine.Position = [604 45 30 22];
            app.hw2_plus_fine.Text = '';

            % Create Whatsthis_FixButton
            app.Whatsthis_FixButton = uibutton(app.FitParametersPanel, 'state');
            app.Whatsthis_FixButton.ValueChangedFcn = createCallbackFcn(app, @Whatsthis_FixButtonValueChanged, true);
            app.Whatsthis_FixButton.Visible = 'off';
            app.Whatsthis_FixButton.Icon = 'Question Mark Icon (New).png';
            app.Whatsthis_FixButton.Text = 'What''s this?';
            app.Whatsthis_FixButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.Whatsthis_FixButton.FontName = 'Arial';
            app.Whatsthis_FixButton.FontColor = [0.651 0.651 0.651];
            app.Whatsthis_FixButton.Position = [9 245 102 23];

            % Create hw_editField
            app.hw_editField = uieditfield(app.FitParametersPanel, 'numeric');
            app.hw_editField.Limits = [0 4000];
            app.hw_editField.ValueDisplayFormat = '%.0f';
            app.hw_editField.ValueChangedFcn = createCallbackFcn(app, @hw_editFieldValueChanged, true);
            app.hw_editField.FontName = 'Arial';
            app.hw_editField.FontColor = [0.651 0.651 0.651];
            app.hw_editField.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw_editField.Position = [448 157 100 22];
            app.hw_editField.Value = 1400;

            % Create E00CheckBox
            app.E00CheckBox = uicheckbox(app.FitParametersPanel);
            app.E00CheckBox.ValueChangedFcn = createCallbackFcn(app, @E00CheckBoxValueChanged, true);
            app.E00CheckBox.Text = '';
            app.E00CheckBox.FontName = 'Arial';
            app.E00CheckBox.FontSize = 14;
            app.E00CheckBox.FontColor = [0.651 0.651 0.651];
            app.E00CheckBox.Position = [131 276 26 22];

            % Create SCheckBox
            app.SCheckBox = uicheckbox(app.FitParametersPanel);
            app.SCheckBox.ValueChangedFcn = createCallbackFcn(app, @SCheckBoxValueChanged, true);
            app.SCheckBox.Text = '';
            app.SCheckBox.FontName = 'Arial';
            app.SCheckBox.FontSize = 14;
            app.SCheckBox.FontColor = [0.651 0.651 0.651];
            app.SCheckBox.Position = [131 157 26 22];

            % Create S2CheckBox
            app.S2CheckBox = uicheckbox(app.FitParametersPanel);
            app.S2CheckBox.ValueChangedFcn = createCallbackFcn(app, @S2CheckBoxValueChanged, true);
            app.S2CheckBox.Text = '';
            app.S2CheckBox.FontName = 'Arial';
            app.S2CheckBox.FontSize = 14;
            app.S2CheckBox.FontColor = [0.651 0.651 0.651];
            app.S2CheckBox.Position = [131 45 26 22];

            % Create v05CheckBox
            app.v05CheckBox = uicheckbox(app.FitParametersPanel);
            app.v05CheckBox.ValueChangedFcn = createCallbackFcn(app, @v05CheckBoxValueChanged, true);
            app.v05CheckBox.Text = '';
            app.v05CheckBox.FontName = 'Arial';
            app.v05CheckBox.FontSize = 14;
            app.v05CheckBox.FontColor = [0.651 0.651 0.651];
            app.v05CheckBox.Position = [452 276 26 22];

            % Create hwCheckBox
            app.hwCheckBox = uicheckbox(app.FitParametersPanel);
            app.hwCheckBox.ValueChangedFcn = createCallbackFcn(app, @hwCheckBoxValueChanged, true);
            app.hwCheckBox.Text = '';
            app.hwCheckBox.FontName = 'Arial';
            app.hwCheckBox.FontSize = 14;
            app.hwCheckBox.FontColor = [0.651 0.651 0.651];
            app.hwCheckBox.Position = [452 157 26 22];

            % Create hw2CheckBox
            app.hw2CheckBox = uicheckbox(app.FitParametersPanel);
            app.hw2CheckBox.ValueChangedFcn = createCallbackFcn(app, @hw2CheckBoxValueChanged, true);
            app.hw2CheckBox.Text = '';
            app.hw2CheckBox.FontName = 'Arial';
            app.hw2CheckBox.FontSize = 14;
            app.hw2CheckBox.FontColor = [0.651 0.651 0.651];
            app.hw2CheckBox.Position = [452 45 26 22];

            % Create E0Label
            app.E0Label = uilabel(app.FitParametersPanel);
            app.E0Label.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E0Label.HorizontalAlignment = 'right';
            app.E0Label.FontName = 'Arial';
            app.E0Label.FontSize = 16;
            app.E0Label.FontWeight = 'bold';
            app.E0Label.FontColor = [0.651 0.651 0.6471];
            app.E0Label.Position = [24 330 38 22];
            app.E0Label.Text = 'Eÿ';

            % Create E0_bounds_stateButton
            app.E0_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.E0_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @E0_bounds_stateButtonValueChanged, true);
            app.E0_bounds_stateButton.Visible = 'off';
            app.E0_bounds_stateButton.Text = 'Custom bounds';
            app.E0_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.E0_bounds_stateButton.FontName = 'Arial';
            app.E0_bounds_stateButton.FontSize = 13;
            app.E0_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.E0_bounds_stateButton.Position = [119 244 116 25];

            % Create v05_bounds_stateButton
            app.v05_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.v05_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @v05_bounds_stateButtonValueChanged, true);
            app.v05_bounds_stateButton.Visible = 'off';
            app.v05_bounds_stateButton.Text = 'Custom bounds';
            app.v05_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.v05_bounds_stateButton.FontName = 'Arial';
            app.v05_bounds_stateButton.FontSize = 13;
            app.v05_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.v05_bounds_stateButton.Position = [440 244 116 25];

            % Create S1_bounds_stateButton
            app.S1_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.S1_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @S1_bounds_stateButtonValueChanged, true);
            app.S1_bounds_stateButton.Visible = 'off';
            app.S1_bounds_stateButton.Text = 'Custom bounds';
            app.S1_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S1_bounds_stateButton.FontName = 'Arial';
            app.S1_bounds_stateButton.FontSize = 13;
            app.S1_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.S1_bounds_stateButton.Position = [119 126 116 25];

            % Create hw1_bounds_stateButton
            app.hw1_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.hw1_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @hw1_bounds_stateButtonValueChanged, true);
            app.hw1_bounds_stateButton.Visible = 'off';
            app.hw1_bounds_stateButton.Text = 'Custom bounds';
            app.hw1_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw1_bounds_stateButton.FontName = 'Arial';
            app.hw1_bounds_stateButton.FontSize = 13;
            app.hw1_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.hw1_bounds_stateButton.Position = [440 126 116 25];

            % Create S2_bounds_stateButton
            app.S2_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.S2_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @S2_bounds_stateButtonValueChanged, true);
            app.S2_bounds_stateButton.Visible = 'off';
            app.S2_bounds_stateButton.Text = 'Custom bounds';
            app.S2_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.S2_bounds_stateButton.FontName = 'Arial';
            app.S2_bounds_stateButton.FontSize = 13;
            app.S2_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.S2_bounds_stateButton.Position = [119 14 116 25];

            % Create hw2_bounds_stateButton
            app.hw2_bounds_stateButton = uibutton(app.FitParametersPanel, 'state');
            app.hw2_bounds_stateButton.ValueChangedFcn = createCallbackFcn(app, @hw2_bounds_stateButtonValueChanged, true);
            app.hw2_bounds_stateButton.Visible = 'off';
            app.hw2_bounds_stateButton.Text = 'Custom bounds';
            app.hw2_bounds_stateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.hw2_bounds_stateButton.FontName = 'Arial';
            app.hw2_bounds_stateButton.FontSize = 13;
            app.hw2_bounds_stateButton.FontColor = [0.651 0.651 0.651];
            app.hw2_bounds_stateButton.Position = [440 14 116 25];

            % Create S1CustomBoundsPanel
            app.S1CustomBoundsPanel = uipanel(app.FitParametersPanel);
            app.S1CustomBoundsPanel.AutoResizeChildren = 'off';
            app.S1CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.S1CustomBoundsPanel.TitlePosition = 'centertop';
            app.S1CustomBoundsPanel.Title = 'S Custom Bounds';
            app.S1CustomBoundsPanel.Visible = 'off';
            app.S1CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.S1CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.S1CustomBoundsPanel.FontWeight = 'bold';
            app.S1CustomBoundsPanel.FontSize = 16;
            app.S1CustomBoundsPanel.Position = [29 188 297 126];

            % Create S1_upperbound_editBox
            app.S1_upperbound_editBox = uieditfield(app.S1CustomBoundsPanel, 'numeric');
            app.S1_upperbound_editBox.Limits = [0 3];
            app.S1_upperbound_editBox.ValueDisplayFormat = '%.2f';
            app.S1_upperbound_editBox.FontName = 'Arial';
            app.S1_upperbound_editBox.FontSize = 14;
            app.S1_upperbound_editBox.FontColor = [1 1 1];
            app.S1_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.S1_upperbound_editBox.Position = [147 47 100 22];
            app.S1_upperbound_editBox.Value = 3;

            % Create UpperLimitLabel_3
            app.UpperLimitLabel_3 = uilabel(app.S1CustomBoundsPanel);
            app.UpperLimitLabel_3.HorizontalAlignment = 'right';
            app.UpperLimitLabel_3.FontName = 'Arial';
            app.UpperLimitLabel_3.FontSize = 14;
            app.UpperLimitLabel_3.FontColor = [1 1 1];
            app.UpperLimitLabel_3.Position = [56 47 77 22];
            app.UpperLimitLabel_3.Text = 'Upper Limit';

            % Create S1_lowerbound_editBox
            app.S1_lowerbound_editBox = uieditfield(app.S1CustomBoundsPanel, 'numeric');
            app.S1_lowerbound_editBox.Limits = [0 3];
            app.S1_lowerbound_editBox.ValueDisplayFormat = '%.2f';
            app.S1_lowerbound_editBox.FontName = 'Arial';
            app.S1_lowerbound_editBox.FontSize = 14;
            app.S1_lowerbound_editBox.FontColor = [1 1 1];
            app.S1_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.S1_lowerbound_editBox.Position = [147 11 100 22];

            % Create LowerLimitLabel_3
            app.LowerLimitLabel_3 = uilabel(app.S1CustomBoundsPanel);
            app.LowerLimitLabel_3.HorizontalAlignment = 'right';
            app.LowerLimitLabel_3.FontName = 'Arial';
            app.LowerLimitLabel_3.FontSize = 14;
            app.LowerLimitLabel_3.FontColor = [1 1 1];
            app.LowerLimitLabel_3.Position = [56 11 77 22];
            app.LowerLimitLabel_3.Text = 'Lower Limit';

            % Create Bothvaluesmustbewithin03Label
            app.Bothvaluesmustbewithin03Label = uilabel(app.S1CustomBoundsPanel);
            app.Bothvaluesmustbewithin03Label.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin03Label.FontName = 'Arial';
            app.Bothvaluesmustbewithin03Label.FontSize = 14;
            app.Bothvaluesmustbewithin03Label.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin03Label.Position = [41 76 216 22];
            app.Bothvaluesmustbewithin03Label.Text = 'Both values must be within 0-3.';

            % Create hw1CustomBoundsPanel
            app.hw1CustomBoundsPanel = uipanel(app.FitParametersPanel);
            app.hw1CustomBoundsPanel.AutoResizeChildren = 'off';
            app.hw1CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.hw1CustomBoundsPanel.TitlePosition = 'centertop';
            app.hw1CustomBoundsPanel.Title = 'ÿÿ Custom Bounds';
            app.hw1CustomBoundsPanel.Visible = 'off';
            app.hw1CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw1CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.hw1CustomBoundsPanel.FontWeight = 'bold';
            app.hw1CustomBoundsPanel.FontSize = 16;
            app.hw1CustomBoundsPanel.Position = [350 188 297 126];

            % Create hw1_upperbound_editBox
            app.hw1_upperbound_editBox = uieditfield(app.hw1CustomBoundsPanel, 'numeric');
            app.hw1_upperbound_editBox.Limits = [0 4000];
            app.hw1_upperbound_editBox.ValueDisplayFormat = '%.0f';
            app.hw1_upperbound_editBox.FontName = 'Arial';
            app.hw1_upperbound_editBox.FontSize = 14;
            app.hw1_upperbound_editBox.FontColor = [1 1 1];
            app.hw1_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw1_upperbound_editBox.Position = [148 45 100 22];
            app.hw1_upperbound_editBox.Value = 4000;

            % Create UpperLimitLabel_4
            app.UpperLimitLabel_4 = uilabel(app.hw1CustomBoundsPanel);
            app.UpperLimitLabel_4.HorizontalAlignment = 'right';
            app.UpperLimitLabel_4.FontName = 'Arial';
            app.UpperLimitLabel_4.FontSize = 14;
            app.UpperLimitLabel_4.FontColor = [1 1 1];
            app.UpperLimitLabel_4.Position = [57 45 77 22];
            app.UpperLimitLabel_4.Text = 'Upper Limit';

            % Create hw1_lowerbound_editBox
            app.hw1_lowerbound_editBox = uieditfield(app.hw1CustomBoundsPanel, 'numeric');
            app.hw1_lowerbound_editBox.Limits = [0 4000];
            app.hw1_lowerbound_editBox.FontName = 'Arial';
            app.hw1_lowerbound_editBox.FontSize = 14;
            app.hw1_lowerbound_editBox.FontColor = [1 1 1];
            app.hw1_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw1_lowerbound_editBox.Position = [147 9 100 22];

            % Create LowerLimitLabel_4
            app.LowerLimitLabel_4 = uilabel(app.hw1CustomBoundsPanel);
            app.LowerLimitLabel_4.HorizontalAlignment = 'right';
            app.LowerLimitLabel_4.FontName = 'Arial';
            app.LowerLimitLabel_4.FontSize = 14;
            app.LowerLimitLabel_4.FontColor = [1 1 1];
            app.LowerLimitLabel_4.Position = [56 9 77 22];
            app.LowerLimitLabel_4.Text = 'Lower Limit';

            % Create Bothvaluesmustbewithin04000cmLabel
            app.Bothvaluesmustbewithin04000cmLabel = uilabel(app.hw1CustomBoundsPanel);
            app.Bothvaluesmustbewithin04000cmLabel.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin04000cmLabel.FontName = 'Arial';
            app.Bothvaluesmustbewithin04000cmLabel.FontSize = 14;
            app.Bothvaluesmustbewithin04000cmLabel.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin04000cmLabel.Position = [22 70 256 22];
            app.Bothvaluesmustbewithin04000cmLabel.Text = 'Both values must be within 0-4000 cmÿ¹.';

            % Create S2CustomBoundsPanel
            app.S2CustomBoundsPanel = uipanel(app.FitParametersPanel);
            app.S2CustomBoundsPanel.AutoResizeChildren = 'off';
            app.S2CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.S2CustomBoundsPanel.TitlePosition = 'centertop';
            app.S2CustomBoundsPanel.Title = 'Sÿ Custom Bounds';
            app.S2CustomBoundsPanel.Visible = 'off';
            app.S2CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.S2CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.S2CustomBoundsPanel.FontWeight = 'bold';
            app.S2CustomBoundsPanel.FontSize = 16;
            app.S2CustomBoundsPanel.Position = [29 76 297 126];

            % Create S2_upperbound_editBox
            app.S2_upperbound_editBox = uieditfield(app.S2CustomBoundsPanel, 'numeric');
            app.S2_upperbound_editBox.Limits = [0 3];
            app.S2_upperbound_editBox.ValueDisplayFormat = '%.2f';
            app.S2_upperbound_editBox.FontName = 'Arial';
            app.S2_upperbound_editBox.FontSize = 14;
            app.S2_upperbound_editBox.FontColor = [1 1 1];
            app.S2_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.S2_upperbound_editBox.Position = [147 45 100 22];
            app.S2_upperbound_editBox.Value = 3;

            % Create UpperLimitLabel_5
            app.UpperLimitLabel_5 = uilabel(app.S2CustomBoundsPanel);
            app.UpperLimitLabel_5.HorizontalAlignment = 'right';
            app.UpperLimitLabel_5.FontName = 'Arial';
            app.UpperLimitLabel_5.FontSize = 14;
            app.UpperLimitLabel_5.FontColor = [1 1 1];
            app.UpperLimitLabel_5.Position = [56 45 77 22];
            app.UpperLimitLabel_5.Text = 'Upper Limit';

            % Create S2_lowerbound_editBox
            app.S2_lowerbound_editBox = uieditfield(app.S2CustomBoundsPanel, 'numeric');
            app.S2_lowerbound_editBox.Limits = [0 3];
            app.S2_lowerbound_editBox.ValueDisplayFormat = '%.2f';
            app.S2_lowerbound_editBox.FontName = 'Arial';
            app.S2_lowerbound_editBox.FontSize = 14;
            app.S2_lowerbound_editBox.FontColor = [1 1 1];
            app.S2_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.S2_lowerbound_editBox.Position = [147 9 100 22];

            % Create LowerLimitLabel_5
            app.LowerLimitLabel_5 = uilabel(app.S2CustomBoundsPanel);
            app.LowerLimitLabel_5.HorizontalAlignment = 'right';
            app.LowerLimitLabel_5.FontName = 'Arial';
            app.LowerLimitLabel_5.FontSize = 14;
            app.LowerLimitLabel_5.FontColor = [1 1 1];
            app.LowerLimitLabel_5.Position = [56 9 77 22];
            app.LowerLimitLabel_5.Text = 'Lower Limit';

            % Create Bothvaluesmustbewithin03Label_2
            app.Bothvaluesmustbewithin03Label_2 = uilabel(app.S2CustomBoundsPanel);
            app.Bothvaluesmustbewithin03Label_2.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin03Label_2.FontName = 'Arial';
            app.Bothvaluesmustbewithin03Label_2.FontSize = 14;
            app.Bothvaluesmustbewithin03Label_2.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin03Label_2.Position = [41 74 216 22];
            app.Bothvaluesmustbewithin03Label_2.Text = 'Both values must be within 0-3.';

            % Create hw2CustomBoundsPanel
            app.hw2CustomBoundsPanel = uipanel(app.FitParametersPanel);
            app.hw2CustomBoundsPanel.AutoResizeChildren = 'off';
            app.hw2CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.hw2CustomBoundsPanel.TitlePosition = 'centertop';
            app.hw2CustomBoundsPanel.Title = 'ÿÿÿ Custom Bounds';
            app.hw2CustomBoundsPanel.Visible = 'off';
            app.hw2CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw2CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.hw2CustomBoundsPanel.FontWeight = 'bold';
            app.hw2CustomBoundsPanel.FontSize = 16;
            app.hw2CustomBoundsPanel.Position = [350 76 297 126];

            % Create hw2_upperbound_editBox
            app.hw2_upperbound_editBox = uieditfield(app.hw2CustomBoundsPanel, 'numeric');
            app.hw2_upperbound_editBox.Limits = [0 4000];
            app.hw2_upperbound_editBox.ValueDisplayFormat = '%.0f';
            app.hw2_upperbound_editBox.FontName = 'Arial';
            app.hw2_upperbound_editBox.FontSize = 14;
            app.hw2_upperbound_editBox.FontColor = [1 1 1];
            app.hw2_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw2_upperbound_editBox.Position = [148 45 100 22];
            app.hw2_upperbound_editBox.Value = 4000;

            % Create UpperLimitLabel_6
            app.UpperLimitLabel_6 = uilabel(app.hw2CustomBoundsPanel);
            app.UpperLimitLabel_6.HorizontalAlignment = 'right';
            app.UpperLimitLabel_6.FontName = 'Arial';
            app.UpperLimitLabel_6.FontSize = 14;
            app.UpperLimitLabel_6.FontColor = [1 1 1];
            app.UpperLimitLabel_6.Position = [57 45 77 22];
            app.UpperLimitLabel_6.Text = 'Upper Limit';

            % Create hw2_lowerbound_editBox
            app.hw2_lowerbound_editBox = uieditfield(app.hw2CustomBoundsPanel, 'numeric');
            app.hw2_lowerbound_editBox.Limits = [0 4000];
            app.hw2_lowerbound_editBox.ValueDisplayFormat = '%.0f';
            app.hw2_lowerbound_editBox.FontName = 'Arial';
            app.hw2_lowerbound_editBox.FontSize = 14;
            app.hw2_lowerbound_editBox.FontColor = [1 1 1];
            app.hw2_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.hw2_lowerbound_editBox.Position = [147 9 100 22];

            % Create LowerLimitLabel_6
            app.LowerLimitLabel_6 = uilabel(app.hw2CustomBoundsPanel);
            app.LowerLimitLabel_6.HorizontalAlignment = 'right';
            app.LowerLimitLabel_6.FontName = 'Arial';
            app.LowerLimitLabel_6.FontSize = 14;
            app.LowerLimitLabel_6.FontColor = [1 1 1];
            app.LowerLimitLabel_6.Position = [56 9 77 22];
            app.LowerLimitLabel_6.Text = 'Lower Limit';

            % Create Bothvaluesmustbewithin04000cmLabel_2
            app.Bothvaluesmustbewithin04000cmLabel_2 = uilabel(app.hw2CustomBoundsPanel);
            app.Bothvaluesmustbewithin04000cmLabel_2.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin04000cmLabel_2.FontName = 'Arial';
            app.Bothvaluesmustbewithin04000cmLabel_2.FontSize = 14;
            app.Bothvaluesmustbewithin04000cmLabel_2.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin04000cmLabel_2.Position = [22 70 256 22];
            app.Bothvaluesmustbewithin04000cmLabel_2.Text = 'Both values must be within 0-4000 cmÿ¹.';

            % Create HiddenPannel
            app.HiddenPannel = uipanel(app.FitParametersPanel);
            app.HiddenPannel.AutoResizeChildren = 'off';
            app.HiddenPannel.ForegroundColor = [0.651 0.651 0.651];
            app.HiddenPannel.BorderType = 'none';
            app.HiddenPannel.BackgroundColor = [0.2196 0.2157 0.2235];
            app.HiddenPannel.FontName = 'Arial';
            app.HiddenPannel.Position = [8 5 654 116];

            % Create Applicationisinsinglemode
            app.Applicationisinsinglemode = uilabel(app.HiddenPannel);
            app.Applicationisinsinglemode.HorizontalAlignment = 'center';
            app.Applicationisinsinglemode.FontName = 'Arial';
            app.Applicationisinsinglemode.FontSize = 14;
            app.Applicationisinsinglemode.FontColor = [0.651 0.651 0.651];
            app.Applicationisinsinglemode.Position = [227 44 201 33];
            app.Applicationisinsinglemode.Text = {'Application is in Single Mode.'; 'Double controls are hidden.'};

            % Create ResetAxesButton
            app.ResetAxesButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.ResetAxesButton.ButtonPushedFcn = createCallbackFcn(app, @ResetAxesButtonPushed, true);
            app.ResetAxesButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ResetAxesButton.FontName = 'Arial Hebrew Scholar';
            app.ResetAxesButton.FontSize = 15;
            app.ResetAxesButton.FontColor = [0.651 0.651 0.651];
            app.ResetAxesButton.Position = [903 643 136 30];
            app.ResetAxesButton.Text = {'Reset Axes'; ''};

            % Create PopOutButton
            app.PopOutButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.PopOutButton.ButtonPushedFcn = createCallbackFcn(app, @PopOutButtonPushed, true);
            app.PopOutButton.Icon = 'Pop Out Icon (New).png';
            app.PopOutButton.IconAlignment = 'center';
            app.PopOutButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.PopOutButton.FontName = 'Arial Rounded MT Bold';
            app.PopOutButton.FontSize = 15;
            app.PopOutButton.FontColor = [0.2196 0.2196 0.2196];
            app.PopOutButton.Position = [667 458 30 30];
            app.PopOutButton.Text = '';

            % Create ResetParametersButton
            app.ResetParametersButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.ResetParametersButton.ButtonPushedFcn = createCallbackFcn(app, @ResetParametersButtonPushed, true);
            app.ResetParametersButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ResetParametersButton.FontName = 'Arial Hebrew Scholar';
            app.ResetParametersButton.FontSize = 15;
            app.ResetParametersButton.FontColor = [0.651 0.651 0.651];
            app.ResetParametersButton.Position = [904 599 136 30];
            app.ResetParametersButton.Text = {'Reset Parameters'; ''};

            % Create ExportDataButton
            app.ExportDataButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.ExportDataButton.ValueChangedFcn = createCallbackFcn(app, @ExportDataButtonValueChanged, true);
            app.ExportDataButton.Icon = 'Export Icon (New).png';
            app.ExportDataButton.IconAlignment = 'top';
            app.ExportDataButton.Text = {'Export'; 'Data'; ' '};
            app.ExportDataButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ExportDataButton.FontName = 'Arial Hebrew Scholar';
            app.ExportDataButton.FontSize = 15;
            app.ExportDataButton.FontColor = [0.651 0.651 0.651];
            app.ExportDataButton.Position = [815 598 68 119];

            % Create CalculationsPanel
            app.CalculationsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.CalculationsPanel.AutoResizeChildren = 'off';
            app.CalculationsPanel.ForegroundColor = [0.651 0.651 0.6471];
            app.CalculationsPanel.BorderType = 'none';
            app.CalculationsPanel.TitlePosition = 'centertop';
            app.CalculationsPanel.Title = 'Calculations';
            app.CalculationsPanel.BackgroundColor = [0.2196 0.2157 0.2235];
            app.CalculationsPanel.FontName = 'Arial Rounded MT Bold';
            app.CalculationsPanel.FontWeight = 'bold';
            app.CalculationsPanel.FontSize = 16;
            app.CalculationsPanel.Position = [732 300 324 257];

            % Create ClearButton
            app.ClearButton = uibutton(app.CalculationsPanel, 'push');
            app.ClearButton.ButtonPushedFcn = createCallbackFcn(app, @ClearButtonPushed, true);
            app.ClearButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ClearButton.FontName = 'Arial Hebrew Scholar';
            app.ClearButton.FontSize = 14;
            app.ClearButton.FontColor = [0.651 0.651 0.651];
            app.ClearButton.Position = [174 17 102 43];
            app.ClearButton.Text = 'Clear';

            % Create CalculateButton
            app.CalculateButton = uibutton(app.CalculationsPanel, 'push');
            app.CalculateButton.ButtonPushedFcn = createCallbackFcn(app, @CalculateButtonPushed, true);
            app.CalculateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.CalculateButton.FontName = 'Arial Hebrew Scholar';
            app.CalculateButton.FontSize = 14;
            app.CalculateButton.FontColor = [0.651 0.651 0.651];
            app.CalculateButton.Position = [50 17 102 43];
            app.CalculateButton.Text = 'Calculate';

            % Create Ges_TextBoxLabel
            app.Ges_TextBoxLabel = uilabel(app.CalculationsPanel);
            app.Ges_TextBoxLabel.HorizontalAlignment = 'right';
            app.Ges_TextBoxLabel.FontName = 'Arial';
            app.Ges_TextBoxLabel.FontSize = 15;
            app.Ges_TextBoxLabel.FontColor = [0.651 0.651 0.651];
            app.Ges_TextBoxLabel.Position = [24 193 96 23];
            app.Ges_TextBoxLabel.Text = 'ÿGÿs (cmÿ¹)';

            % Create ChromaticityCoordinateLabel
            app.ChromaticityCoordinateLabel = uilabel(app.CalculationsPanel);
            app.ChromaticityCoordinateLabel.HorizontalAlignment = 'right';
            app.ChromaticityCoordinateLabel.FontName = 'Arial';
            app.ChromaticityCoordinateLabel.FontSize = 15;
            app.ChromaticityCoordinateLabel.FontColor = [0.651 0.651 0.651];
            app.ChromaticityCoordinateLabel.Position = [8 128 112 41];
            app.ChromaticityCoordinateLabel.Text = {'Chromaticity'; 'Coordinate'};

            % Create Ges_Panel
            app.Ges_Panel = uipanel(app.CalculationsPanel);
            app.Ges_Panel.AutoResizeChildren = 'off';
            app.Ges_Panel.ForegroundColor = [0.651 0.651 0.651];
            app.Ges_Panel.BackgroundColor = [0.2196 0.2196 0.2196];
            app.Ges_Panel.FontName = 'Arial';
            app.Ges_Panel.Position = [139 185 143 37];

            % Create chromaticity_Panel
            app.chromaticity_Panel = uipanel(app.CalculationsPanel);
            app.chromaticity_Panel.AutoResizeChildren = 'off';
            app.chromaticity_Panel.ForegroundColor = [0.651 0.651 0.651];
            app.chromaticity_Panel.BackgroundColor = [0.2196 0.2196 0.2196];
            app.chromaticity_Panel.FontName = 'Arial';
            app.chromaticity_Panel.Position = [139 130 143 37];

            % Create chromaticity_TextBox
            app.chromaticity_TextBox = uilabel(app.CalculationsPanel);
            app.chromaticity_TextBox.HorizontalAlignment = 'center';
            app.chromaticity_TextBox.FontName = 'Arial';
            app.chromaticity_TextBox.FontSize = 13;
            app.chromaticity_TextBox.FontColor = [0.651 0.651 0.651];
            app.chromaticity_TextBox.Position = [139 130 143 37];
            app.chromaticity_TextBox.Text = '';

            % Create Ges_TextBox
            app.Ges_TextBox = uilabel(app.CalculationsPanel);
            app.Ges_TextBox.HorizontalAlignment = 'center';
            app.Ges_TextBox.FontName = 'Arial';
            app.Ges_TextBox.FontSize = 13;
            app.Ges_TextBox.FontColor = [0.651 0.651 0.651];
            app.Ges_TextBox.Position = [141 188 139 32];
            app.Ges_TextBox.Text = '';

            % Create PredictedColorLabel
            app.PredictedColorLabel = uilabel(app.CalculationsPanel);
            app.PredictedColorLabel.HorizontalAlignment = 'right';
            app.PredictedColorLabel.FontName = 'Arial';
            app.PredictedColorLabel.FontSize = 15;
            app.PredictedColorLabel.FontColor = [0.651 0.651 0.651];
            app.PredictedColorLabel.Position = [11 77 109 36];
            app.PredictedColorLabel.Text = {'Predicted'; 'Color'};

            % Create Color_Panel
            app.Color_Panel = uipanel(app.CalculationsPanel);
            app.Color_Panel.AutoResizeChildren = 'off';
            app.Color_Panel.ForegroundColor = [0.651 0.651 0.651];
            app.Color_Panel.BackgroundColor = [0.2196 0.2196 0.2196];
            app.Color_Panel.FontName = 'Arial';
            app.Color_Panel.Position = [139 76 143 37];

            % Create CIEPopoutStateButton
            app.CIEPopoutStateButton = uibutton(app.CalculationsPanel, 'state');
            app.CIEPopoutStateButton.ValueChangedFcn = createCallbackFcn(app, @CIEPopoutStateButtonValueChanged, true);
            app.CIEPopoutStateButton.Icon = 'Pop Out Icon (New).png';
            app.CIEPopoutStateButton.IconAlignment = 'center';
            app.CIEPopoutStateButton.Text = '';
            app.CIEPopoutStateButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.CIEPopoutStateButton.FontName = 'Arial';
            app.CIEPopoutStateButton.FontSize = 15;
            app.CIEPopoutStateButton.FontColor = [0.651 0.651 0.651];
            app.CIEPopoutStateButton.Position = [288 134 30 30];

            % Create DisabledLabel
            app.DisabledLabel = uilabel(app.CalculationsPanel);
            app.DisabledLabel.BackgroundColor = [0.2196 0.2196 0.2196];
            app.DisabledLabel.HorizontalAlignment = 'center';
            app.DisabledLabel.FontName = 'Arial';
            app.DisabledLabel.FontSize = 15;
            app.DisabledLabel.FontColor = [0.651 0.651 0.651];
            app.DisabledLabel.Visible = 'off';
            app.DisabledLabel.Position = [140 77 141 35];
            app.DisabledLabel.Text = 'Disabled';

            % Create RLabel
            app.RLabel = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.RLabel.VerticalAlignment = 'bottom';
            app.RLabel.FontName = 'Arial';
            app.RLabel.FontSize = 14;
            app.RLabel.FontColor = [0.651 0.651 0.651];
            app.RLabel.Visible = 'off';
            app.RLabel.Position = [105 757 151 22];
            app.RLabel.Text = 'R² =  ';

            % Create ImportDataButton
            app.ImportDataButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.ImportDataButton.ValueChangedFcn = createCallbackFcn(app, @ImportDataButtonValueChanged, true);
            app.ImportDataButton.Icon = 'Import Icon (New).png';
            app.ImportDataButton.IconAlignment = 'top';
            app.ImportDataButton.Text = {'Import'; 'Data'; ' '};
            app.ImportDataButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ImportDataButton.FontName = 'Arial Hebrew Scholar';
            app.ImportDataButton.FontSize = 15;
            app.ImportDataButton.FontColor = [0.651 0.651 0.651];
            app.ImportDataButton.Position = [748 598 68 119];

            % Create ImportDataOptionsPanel
            app.ImportDataOptionsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.ImportDataOptionsPanel.AutoResizeChildren = 'off';
            app.ImportDataOptionsPanel.ForegroundColor = [1 1 1];
            app.ImportDataOptionsPanel.TitlePosition = 'centertop';
            app.ImportDataOptionsPanel.Title = 'Import Data Options';
            app.ImportDataOptionsPanel.Visible = 'off';
            app.ImportDataOptionsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.ImportDataOptionsPanel.FontName = 'Arial Rounded MT Bold';
            app.ImportDataOptionsPanel.FontWeight = 'bold';
            app.ImportDataOptionsPanel.FontSize = 16;
            app.ImportDataOptionsPanel.Position = [474 438 342 158];

            % Create ImportDataOptionsLabel
            app.ImportDataOptionsLabel = uilabel(app.ImportDataOptionsPanel);
            app.ImportDataOptionsLabel.HorizontalAlignment = 'center';
            app.ImportDataOptionsLabel.FontName = 'Arial';
            app.ImportDataOptionsLabel.FontSize = 14;
            app.ImportDataOptionsLabel.FontColor = [1 1 1];
            app.ImportDataOptionsLabel.Position = [8 98 327 22];
            app.ImportDataOptionsLabel.Text = 'What type of spectrum are you importing?';

            % Create ExcitationButton
            app.ExcitationButton = uibutton(app.ImportDataOptionsPanel, 'push');
            app.ExcitationButton.ButtonPushedFcn = createCallbackFcn(app, @ExcitationButtonPushed, true);
            app.ExcitationButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ExcitationButton.FontName = 'Arial Hebrew Scholar';
            app.ExcitationButton.FontSize = 14.5;
            app.ExcitationButton.FontColor = [1 1 1];
            app.ExcitationButton.Position = [51 19 110 62];
            app.ExcitationButton.Text = 'Excitation';

            % Create EmissionButton
            app.EmissionButton = uibutton(app.ImportDataOptionsPanel, 'push');
            app.EmissionButton.ButtonPushedFcn = createCallbackFcn(app, @EmissionButtonPushed, true);
            app.EmissionButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.EmissionButton.FontName = 'Arial Hebrew Scholar';
            app.EmissionButton.FontSize = 14.5;
            app.EmissionButton.FontColor = [1 1 1];
            app.EmissionButton.Position = [183 19 110 62];
            app.EmissionButton.Text = 'Emission';

            % Create Optimizationhasbeenrunnings
            app.Optimizationhasbeenrunnings = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.Optimizationhasbeenrunnings.HorizontalAlignment = 'center';
            app.Optimizationhasbeenrunnings.FontName = 'Arial';
            app.Optimizationhasbeenrunnings.FontSize = 13;
            app.Optimizationhasbeenrunnings.FontColor = [0.651 0.651 0.651];
            app.Optimizationhasbeenrunnings.Visible = 'off';
            app.Optimizationhasbeenrunnings.Position = [737 11 313 41];
            app.Optimizationhasbeenrunnings.Text = 'Optimization has been running since 00:07 AM';

            % Create PlotfitFunctionButton
            app.PlotfitFunctionButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.PlotfitFunctionButton.ButtonPushedFcn = createCallbackFcn(app, @PlotfitFunctionButtonPushed, true);
            app.PlotfitFunctionButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.PlotfitFunctionButton.FontName = 'Arial Hebrew Scholar';
            app.PlotfitFunctionButton.FontSize = 15;
            app.PlotfitFunctionButton.FontColor = [0.651 0.651 0.651];
            app.PlotfitFunctionButton.Position = [908 85 100 77];
            app.PlotfitFunctionButton.Text = {'Plot Fit'; 'Function'};

            % Create PlottingLampLabel
            app.PlottingLampLabel = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.PlottingLampLabel.HorizontalAlignment = 'right';
            app.PlottingLampLabel.FontName = 'Arial';
            app.PlottingLampLabel.FontSize = 13;
            app.PlottingLampLabel.FontColor = [0.651 0.651 0.6471];
            app.PlottingLampLabel.Position = [941 53 48 22];
            app.PlottingLampLabel.Text = 'Plotting';

            % Create PlottingLamp
            app.PlottingLamp = uilamp(app.Franck_Condon_Lineshape_Analyser);
            app.PlottingLamp.Position = [917 53 20 20];
            app.PlottingLamp.Color = [0.4745 0.4784 0.502];

            % Create OptimizeFitButton
            app.OptimizeFitButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.OptimizeFitButton.ButtonPushedFcn = createCallbackFcn(app, @OptimizeFitButtonPushed, true);
            app.OptimizeFitButton.BusyAction = 'cancel';
            app.OptimizeFitButton.BackgroundColor = [0 0.4 0.8392];
            app.OptimizeFitButton.FontName = 'Arial Hebrew Scholar';
            app.OptimizeFitButton.FontSize = 15;
            app.OptimizeFitButton.FontColor = [1 1 1];
            app.OptimizeFitButton.Position = [779 85 100 77];
            app.OptimizeFitButton.Text = {'Optimize'; 'Fit'};

            % Create OptimizingLampLabel
            app.OptimizingLampLabel = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.OptimizingLampLabel.BusyAction = 'cancel';
            app.OptimizingLampLabel.HorizontalAlignment = 'right';
            app.OptimizingLampLabel.FontName = 'Arial';
            app.OptimizingLampLabel.FontSize = 13;
            app.OptimizingLampLabel.FontColor = [0.651 0.651 0.6471];
            app.OptimizingLampLabel.Position = [804 56 67 22];
            app.OptimizingLampLabel.Text = 'Optimizing';

            % Create OptimizingLamp
            app.OptimizingLamp = uilamp(app.Franck_Condon_Lineshape_Analyser);
            app.OptimizingLamp.BusyAction = 'cancel';
            app.OptimizingLamp.Position = [786 56 20 20];
            app.OptimizingLamp.Color = [0.4745 0.4784 0.502];

            % Create SelectedSpectrumLabel
            app.SelectedSpectrumLabel = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.SelectedSpectrumLabel.HorizontalAlignment = 'center';
            app.SelectedSpectrumLabel.FontName = 'Arial';
            app.SelectedSpectrumLabel.FontSize = 15;
            app.SelectedSpectrumLabel.FontColor = [0.651 0.651 0.651];
            app.SelectedSpectrumLabel.Position = [737 242 313 45];
            app.SelectedSpectrumLabel.Text = 'No spectrum selected for fitting';

            % Create ExportDataOptionsPanel
            app.ExportDataOptionsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.ExportDataOptionsPanel.AutoResizeChildren = 'off';
            app.ExportDataOptionsPanel.ForegroundColor = [1 1 1];
            app.ExportDataOptionsPanel.TitlePosition = 'centertop';
            app.ExportDataOptionsPanel.Title = 'Export Data Options';
            app.ExportDataOptionsPanel.Visible = 'off';
            app.ExportDataOptionsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.ExportDataOptionsPanel.FontName = 'Arial Rounded MT Bold';
            app.ExportDataOptionsPanel.FontWeight = 'bold';
            app.ExportDataOptionsPanel.FontSize = 16;
            app.ExportDataOptionsPanel.Position = [504 352 379 244];

            % Create ExportDataOptionsLabel
            app.ExportDataOptionsLabel = uilabel(app.ExportDataOptionsPanel);
            app.ExportDataOptionsLabel.HorizontalAlignment = 'center';
            app.ExportDataOptionsLabel.FontName = 'Arial';
            app.ExportDataOptionsLabel.FontSize = 14;
            app.ExportDataOptionsLabel.FontColor = [1 1 1];
            app.ExportDataOptionsLabel.Position = [46 192 288 22];
            app.ExportDataOptionsLabel.Text = 'What data would you like to export?';

            % Create FCLSAPanel
            app.FCLSAPanel = uipanel(app.ExportDataOptionsPanel);
            app.FCLSAPanel.AutoResizeChildren = 'off';
            app.FCLSAPanel.ForegroundColor = [1 1 1];
            app.FCLSAPanel.BorderType = 'none';
            app.FCLSAPanel.TitlePosition = 'centertop';
            app.FCLSAPanel.Title = 'FCLSA';
            app.FCLSAPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.FCLSAPanel.FontName = 'Arial';
            app.FCLSAPanel.FontWeight = 'bold';
            app.FCLSAPanel.FontSize = 14;
            app.FCLSAPanel.Position = [11 80 358 109];

            % Create FigureButton
            app.FigureButton = uibutton(app.FCLSAPanel, 'push');
            app.FigureButton.ButtonPushedFcn = createCallbackFcn(app, @FigureButtonPushed, true);
            app.FigureButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.FigureButton.FontName = 'Arial Hebrew Scholar';
            app.FigureButton.FontSize = 14.5;
            app.FigureButton.FontColor = [1 1 1];
            app.FigureButton.Position = [9 51 164 29];
            app.FigureButton.Text = 'Figure';

            % Create ParametervaluesButton
            app.ParametervaluesButton = uibutton(app.FCLSAPanel, 'push');
            app.ParametervaluesButton.ButtonPushedFcn = createCallbackFcn(app, @ParametervaluesButtonPushed, true);
            app.ParametervaluesButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ParametervaluesButton.FontName = 'Arial Hebrew Scholar';
            app.ParametervaluesButton.FontSize = 14.5;
            app.ParametervaluesButton.FontColor = [1 1 1];
            app.ParametervaluesButton.Position = [184 51 164 29];
            app.ParametervaluesButton.Text = 'Parameter values';

            % Create SpectrumdatapointsButton
            app.SpectrumdatapointsButton = uibutton(app.FCLSAPanel, 'push');
            app.SpectrumdatapointsButton.ButtonPushedFcn = createCallbackFcn(app, @SpectrumdatapointsButtonPushed, true);
            app.SpectrumdatapointsButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.SpectrumdatapointsButton.FontName = 'Arial Hebrew Scholar';
            app.SpectrumdatapointsButton.FontSize = 14.5;
            app.SpectrumdatapointsButton.FontColor = [1 1 1];
            app.SpectrumdatapointsButton.Position = [9 6 164 29];
            app.SpectrumdatapointsButton.Text = 'Spectrum data points';

            % Create FitdatapointsButton
            app.FitdatapointsButton = uibutton(app.FCLSAPanel, 'push');
            app.FitdatapointsButton.ButtonPushedFcn = createCallbackFcn(app, @FitdatapointsButtonPushed, true);
            app.FitdatapointsButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.FitdatapointsButton.FontName = 'Arial Hebrew Scholar';
            app.FitdatapointsButton.FontSize = 14.5;
            app.FitdatapointsButton.FontColor = [1 1 1];
            app.FitdatapointsButton.Position = [184 6 164 29];
            app.FitdatapointsButton.Text = 'Fit data points';

            % Create ColorAnalysisPanel
            app.ColorAnalysisPanel = uipanel(app.ExportDataOptionsPanel);
            app.ColorAnalysisPanel.AutoResizeChildren = 'off';
            app.ColorAnalysisPanel.ForegroundColor = [1 1 1];
            app.ColorAnalysisPanel.BorderType = 'none';
            app.ColorAnalysisPanel.TitlePosition = 'centertop';
            app.ColorAnalysisPanel.Title = 'Color Analysis';
            app.ColorAnalysisPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.ColorAnalysisPanel.FontName = 'Arial';
            app.ColorAnalysisPanel.FontWeight = 'bold';
            app.ColorAnalysisPanel.FontSize = 14;
            app.ColorAnalysisPanel.Position = [11 10 358 63];

            % Create ColorValuesButton
            app.ColorValuesButton = uibutton(app.ColorAnalysisPanel, 'push');
            app.ColorValuesButton.ButtonPushedFcn = createCallbackFcn(app, @ColorValuesButtonPushed, true);
            app.ColorValuesButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ColorValuesButton.FontName = 'Arial Hebrew Scholar';
            app.ColorValuesButton.FontSize = 14.5;
            app.ColorValuesButton.FontColor = [1 1 1];
            app.ColorValuesButton.Position = [9 4 164 29];
            app.ColorValuesButton.Text = 'Color Values';

            % Create ChromaticityDiagramButton
            app.ChromaticityDiagramButton = uibutton(app.ColorAnalysisPanel, 'push');
            app.ChromaticityDiagramButton.ButtonPushedFcn = createCallbackFcn(app, @ChromaticityDiagramButtonPushed, true);
            app.ChromaticityDiagramButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ChromaticityDiagramButton.FontName = 'Arial Hebrew Scholar';
            app.ChromaticityDiagramButton.FontSize = 14.5;
            app.ChromaticityDiagramButton.FontColor = [1 1 1];
            app.ChromaticityDiagramButton.Position = [184 4 164 29];
            app.ChromaticityDiagramButton.Text = 'Chromaticity Diagram';

            % Create SelectSpectrumPanel
            app.SelectSpectrumPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.SelectSpectrumPanel.AutoResizeChildren = 'off';
            app.SelectSpectrumPanel.ForegroundColor = [1 1 1];
            app.SelectSpectrumPanel.TitlePosition = 'centertop';
            app.SelectSpectrumPanel.Title = 'Select Spectrum';
            app.SelectSpectrumPanel.Visible = 'off';
            app.SelectSpectrumPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.SelectSpectrumPanel.FontName = 'Arial Rounded MT Bold';
            app.SelectSpectrumPanel.FontWeight = 'bold';
            app.SelectSpectrumPanel.Scrollable = 'on';
            app.SelectSpectrumPanel.FontSize = 16;
            app.SelectSpectrumPanel.Position = [721 294 345 226];

            % Create SelectSpectrumLabel
            app.SelectSpectrumLabel = uilabel(app.SelectSpectrumPanel);
            app.SelectSpectrumLabel.FontName = 'Arial';
            app.SelectSpectrumLabel.FontSize = 14;
            app.SelectSpectrumLabel.FontColor = [1 1 1];
            app.SelectSpectrumLabel.Position = [19 135 284 65];
            app.SelectSpectrumLabel.Text = {'Select the spectrum you would like to fit '; 'from the list below, or press the above '; '"Import Data" button:'};

            % Create CancelOptimizationButton
            app.CancelOptimizationButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.CancelOptimizationButton.ButtonPushedFcn = createCallbackFcn(app, @CancelOptimizationButtonPushed, true);
            app.CancelOptimizationButton.BusyAction = 'cancel';
            app.CancelOptimizationButton.BackgroundColor = [0.6039 0.1294 0.2275];
            app.CancelOptimizationButton.FontName = 'Arial Hebrew Scholar';
            app.CancelOptimizationButton.FontSize = 14.5;
            app.CancelOptimizationButton.FontColor = [1 1 1];
            app.CancelOptimizationButton.Visible = 'off';
            app.CancelOptimizationButton.Position = [778.5 85 101 77];
            app.CancelOptimizationButton.Text = {'Cancel'; 'Optimization'};

            % Create SelectSpectrumtoFitButton
            app.SelectSpectrumtoFitButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.SelectSpectrumtoFitButton.ValueChangedFcn = createCallbackFcn(app, @SelectSpectrumtoFitButtonValueChanged, true);
            app.SelectSpectrumtoFitButton.IconAlignment = 'top';
            app.SelectSpectrumtoFitButton.Text = 'Select Spectrum to Fit';
            app.SelectSpectrumtoFitButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.SelectSpectrumtoFitButton.FontName = 'Arial Hebrew Scholar';
            app.SelectSpectrumtoFitButton.FontSize = 15;
            app.SelectSpectrumtoFitButton.FontColor = [0.651 0.651 0.651];
            app.SelectSpectrumtoFitButton.Position = [795 190 196 43];

            % Create FixParameterPanel
            app.FixParameterPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.FixParameterPanel.AutoResizeChildren = 'off';
            app.FixParameterPanel.ForegroundColor = [1 1 1];
            app.FixParameterPanel.TitlePosition = 'centertop';
            app.FixParameterPanel.Title = 'Fix Parameter';
            app.FixParameterPanel.Visible = 'off';
            app.FixParameterPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.FixParameterPanel.FontName = 'Arial Rounded MT Bold';
            app.FixParameterPanel.FontWeight = 'bold';
            app.FixParameterPanel.FontSize = 16;
            app.FixParameterPanel.Position = [8 313 183 157];

            % Create FixParameterLabel
            app.FixParameterLabel = uilabel(app.FixParameterPanel);
            app.FixParameterLabel.FontName = 'Arial';
            app.FixParameterLabel.FontSize = 14;
            app.FixParameterLabel.FontColor = [1 1 1];
            app.FixParameterLabel.Position = [6 7 172 120];
            app.FixParameterLabel.Text = {'Check this box to '; 'fix the parameter to its '; 'current value. A fixed '; 'parameter''s value will'; 'not be changed during '; 'optimization.'};

            % Create InfoButton
            app.InfoButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.InfoButton.ValueChangedFcn = createCallbackFcn(app, @InfoButtonValueChanged, true);
            app.InfoButton.Icon = 'Info Icon (New).png';
            app.InfoButton.Text = 'Info';
            app.InfoButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.InfoButton.FontName = 'Arial Hebrew Scholar';
            app.InfoButton.FontSize = 15;
            app.InfoButton.FontColor = [0.651 0.651 0.6471];
            app.InfoButton.Position = [779 787 136 24];

            % Create ClearDataButton
            app.ClearDataButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'push');
            app.ClearDataButton.ButtonPushedFcn = createCallbackFcn(app, @ClearDataButtonPushed, true);
            app.ClearDataButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.ClearDataButton.FontName = 'Arial Hebrew Scholar';
            app.ClearDataButton.FontSize = 15;
            app.ClearDataButton.FontColor = [0.651 0.651 0.651];
            app.ClearDataButton.Position = [903 687 136 30];
            app.ClearDataButton.Text = 'Clear Data';

            % Create InfoPanel
            app.InfoPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.InfoPanel.AutoResizeChildren = 'off';
            app.InfoPanel.ForegroundColor = [1 1 1];
            app.InfoPanel.TitlePosition = 'centertop';
            app.InfoPanel.Title = 'Info';
            app.InfoPanel.Visible = 'off';
            app.InfoPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.InfoPanel.FontName = 'Arial Rounded MT Bold';
            app.InfoPanel.FontWeight = 'bold';
            app.InfoPanel.FontSize = 16;
            app.InfoPanel.Position = [228 230 687 547];

            % Create AboutUsTabGroup
            app.AboutUsTabGroup = uitabgroup(app.InfoPanel);
            app.AboutUsTabGroup.AutoResizeChildren = 'off';
            app.AboutUsTabGroup.TabLocation = 'left';
            app.AboutUsTabGroup.Position = [0 2 686 523];

            % Create AboutUsTab
            app.AboutUsTab = uitab(app.AboutUsTabGroup);
            app.AboutUsTab.AutoResizeChildren = 'off';
            app.AboutUsTab.Title = 'About Us';
            app.AboutUsTab.BackgroundColor = [0.4392 0.451 0.4588];
            app.AboutUsTab.Scrollable = 'on';

            % Create ARLSpectralFittingv10Panel
            app.ARLSpectralFittingv10Panel = uipanel(app.AboutUsTab);
            app.ARLSpectralFittingv10Panel.AutoResizeChildren = 'off';
            app.ARLSpectralFittingv10Panel.ForegroundColor = [1 1 1];
            app.ARLSpectralFittingv10Panel.BorderType = 'none';
            app.ARLSpectralFittingv10Panel.TitlePosition = 'centertop';
            app.ARLSpectralFittingv10Panel.Title = 'ARL Spectral Fitting, v1.0';
            app.ARLSpectralFittingv10Panel.BackgroundColor = [0.4392 0.451 0.4588];
            app.ARLSpectralFittingv10Panel.FontName = 'Arial Rounded MT Bold';
            app.ARLSpectralFittingv10Panel.FontWeight = 'bold';
            app.ARLSpectralFittingv10Panel.FontSize = 15;
            app.ARLSpectralFittingv10Panel.Position = [5 11 533 509];

            % Create AboutLabel
            app.AboutLabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.AboutLabel.HorizontalAlignment = 'center';
            app.AboutLabel.FontName = 'Arial Rounded MT Bold';
            app.AboutLabel.FontSize = 14;
            app.AboutLabel.FontWeight = 'bold';
            app.AboutLabel.FontColor = [1 1 1];
            app.AboutLabel.Position = [244.5 465 46 22];
            app.AboutLabel.Text = 'About';

            % Create WhyFCLSALabel
            app.WhyFCLSALabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.WhyFCLSALabel.HorizontalAlignment = 'center';
            app.WhyFCLSALabel.FontName = 'Arial';
            app.WhyFCLSALabel.FontSize = 13;
            app.WhyFCLSALabel.FontColor = [1 1 1];
            app.WhyFCLSALabel.Position = [-2 327 539 139];
            app.WhyFCLSALabel.Text = {'This application allows the user to import spectrum data and perform Franck-Condon'; 'Lineshape Analysis, either by hand-tuning the parameters or through one of two'; 'optimization methods: a nonlinear least-squares fit optimization using the Levenberg'; 'ÿMarquardt algorithm or a derivative-free method utilizing the Nelder-Mead simplex'; 'algorithm. Once the optimal value of each of these parameters is determined, the'; 'parameters can be used in further calculations (for example, free energy of the'; 'excited state), or evaluated on their own to give information about the molecule.'; 'For more information, as well as a step-by-step guide for use of'; 'this application, please refer to the ARL technical report.'};

            % Create PointsofContactLabel
            app.PointsofContactLabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.PointsofContactLabel.HorizontalAlignment = 'center';
            app.PointsofContactLabel.FontName = 'Arial Rounded MT Bold';
            app.PointsofContactLabel.FontSize = 14;
            app.PointsofContactLabel.FontWeight = 'bold';
            app.PointsofContactLabel.FontColor = [1 1 1];
            app.PointsofContactLabel.Position = [206 298 122 22];
            app.PointsofContactLabel.Text = 'Points of Contact';

            % Create PointsofContactBodyLabel
            app.PointsofContactBodyLabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.PointsofContactBodyLabel.HorizontalAlignment = 'center';
            app.PointsofContactBodyLabel.FontName = 'Arial';
            app.PointsofContactBodyLabel.FontSize = 13;
            app.PointsofContactBodyLabel.FontColor = [1 1 1];
            app.PointsofContactBodyLabel.Position = [52 222 430 76];
            app.PointsofContactBodyLabel.Text = {'Wiliam R. Roberts ÿ wrrobert@buffalo.edu'; 'Ryan M. O''Donnell, Ph.D. ÿ ryan.m.odonnell12.civ@mail.mil'; 'Army Research Laboratory'; '2800 Powder Mill Road'; 'Adelphi, MD 20783-1138'};

            % Create AcknowledgmentLabel
            app.AcknowledgmentLabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.AcknowledgmentLabel.HorizontalAlignment = 'center';
            app.AcknowledgmentLabel.FontName = 'Arial Rounded MT Bold';
            app.AcknowledgmentLabel.FontSize = 14;
            app.AcknowledgmentLabel.FontWeight = 'bold';
            app.AcknowledgmentLabel.FontColor = [1 1 1];
            app.AcknowledgmentLabel.Position = [205.5 190 124 22];
            app.AcknowledgmentLabel.Text = 'Acknowledgment';

            % Create AcknowledgmentBodyLabel
            app.AcknowledgmentBodyLabel = uilabel(app.ARLSpectralFittingv10Panel);
            app.AcknowledgmentBodyLabel.HorizontalAlignment = 'center';
            app.AcknowledgmentBodyLabel.FontName = 'Arial';
            app.AcknowledgmentBodyLabel.FontSize = 13;
            app.AcknowledgmentBodyLabel.FontColor = [1 1 1];
            app.AcknowledgmentBodyLabel.Position = [-12 76 559 115];
            app.AcknowledgmentBodyLabel.Text = {'Research was sponsored by the Army Research Laboratory and was accomplished'; 'under Cooperative Agreement Number W911NF-20-2-0154. The views and'; 'conclusions contained in this document are those of the authors and should not be'; 'interpreted as representing the official policies, either expressed or implied, of the'; 'Army Research Laboratory or the U.S. government. The U.S. Government is'; 'authorized to reproduce and distribute reprints for Government purposes'; 'notwithstanding any copyright notation herein.'};

            % Create Image
            app.Image = uiimage(app.ARLSpectralFittingv10Panel);
            app.Image.Position = [138 -15 258 100];
            app.Image.ImageSource = 'Lineage_RGB_Reverse_RLB.lg.png';

            % Create CitedFunctionsTab
            app.CitedFunctionsTab = uitab(app.AboutUsTabGroup);
            app.CitedFunctionsTab.AutoResizeChildren = 'off';
            app.CitedFunctionsTab.Title = 'Cited Functions';
            app.CitedFunctionsTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create MathWorksFileExchangePanel
            app.MathWorksFileExchangePanel = uipanel(app.CitedFunctionsTab);
            app.MathWorksFileExchangePanel.AutoResizeChildren = 'off';
            app.MathWorksFileExchangePanel.ForegroundColor = [1 1 1];
            app.MathWorksFileExchangePanel.TitlePosition = 'centertop';
            app.MathWorksFileExchangePanel.Title = 'MathWorks File Exchange';
            app.MathWorksFileExchangePanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.MathWorksFileExchangePanel.FontName = 'Arial Rounded MT Bold';
            app.MathWorksFileExchangePanel.FontWeight = 'bold';
            app.MathWorksFileExchangePanel.FontSize = 15;
            app.MathWorksFileExchangePanel.Position = [15 201 514 304];

            % Create DanzLabel
            app.DanzLabel = uilabel(app.MathWorksFileExchangePanel);
            app.DanzLabel.FontName = 'Arial';
            app.DanzLabel.FontSize = 14;
            app.DanzLabel.FontColor = [1 1 1];
            app.DanzLabel.Position = [12 218 487 55];
            app.DanzLabel.Text = {'Adam Danz (2020). copyUIAxes (https://www.mathworks.com/matlabcentral/'; '        fileexchange/73103- MATLAB Central File Exchange. Retrieved'; '        June 13, 2020.'};

            % Create EganLabel
            app.EganLabel = uilabel(app.MathWorksFileExchangePanel);
            app.EganLabel.FontName = 'Arial';
            app.EganLabel.FontSize = 14;
            app.EganLabel.FontColor = [1 1 1];
            app.EganLabel.Position = [12 78 487 55];
            app.EganLabel.Text = {'Patrick Egan (2020). fwhm (https://www.mathworks.com/matlabcentral/'; '        fileexchange/10590-fwhm), MATLAB Central File Exchange. Retrieved'; '        July 6, 2020.'};

            % Create DErricoLabel
            app.DErricoLabel = uilabel(app.MathWorksFileExchangePanel);
            app.DErricoLabel.FontName = 'Arial';
            app.DErricoLabel.FontSize = 14;
            app.DErricoLabel.FontColor = [1 1 1];
            app.DErricoLabel.Position = [12 148 487 55];
            app.DErricoLabel.Text = {'John D''Errico (2020). fminsearchbnd, fminsearchcon (https://www.mathworks.'; '        com/matlabcentral/fileexchange/8277-fminsearchbnd-fminsearchcon),'; '        MATLAB Central File Exchange. Retrieved July 22, 2020.'};

            % Create GreeneLabel
            app.GreeneLabel = uilabel(app.MathWorksFileExchangePanel);
            app.GreeneLabel.FontName = 'Arial';
            app.GreeneLabel.FontSize = 14;
            app.GreeneLabel.FontColor = [1 1 1];
            app.GreeneLabel.Position = [12 9 487 55];
            app.GreeneLabel.Text = {'Chad Greene (2020). rgb2hex and hex2rgb (https://www.mathworks.com/'; '        matlabcentral/fileexchange/46289-rgb2hex-and-hex2rgb), MATLAB'; '        Central File Exchange. Retrieved August 19, 2020.'};

            % Create OtherPanel
            app.OtherPanel = uipanel(app.CitedFunctionsTab);
            app.OtherPanel.AutoResizeChildren = 'off';
            app.OtherPanel.ForegroundColor = [1 1 1];
            app.OtherPanel.TitlePosition = 'centertop';
            app.OtherPanel.Title = 'Other';
            app.OtherPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.OtherPanel.FontName = 'Arial Rounded MT Bold';
            app.OtherPanel.FontWeight = 'bold';
            app.OtherPanel.FontSize = 15;
            app.OtherPanel.Position = [15 25 514 154];

            % Create CIELabel
            app.CIELabel = uilabel(app.OtherPanel);
            app.CIELabel.FontName = 'Arial';
            app.CIELabel.FontSize = 14;
            app.CIELabel.FontColor = [1 1 1];
            app.CIELabel.Position = [10 9 487 68];
            app.CIELabel.Text = {'Rensselaer Polytechnic Institute (2004). "Appendix B: MATLAB script for'; '        calculating measures of light source color: CCT, CRI, GA, and FSI."'; '        (https://www.lrc.rpi.edu/programs/nlpip/lightinganswers/lightsources/'; '        appendixb1.asp), NLPIP Lighting Answers. Retrieved June 20, 2020.'; '	'; ''};

            % Create BambhaLabel
            app.BambhaLabel = uilabel(app.OtherPanel);
            app.BambhaLabel.FontName = 'Arial';
            app.BambhaLabel.FontSize = 14;
            app.BambhaLabel.FontColor = [1 1 1];
            app.BambhaLabel.Position = [10 88 487 33];
            app.BambhaLabel.Text = {'Neal Bambha (2020). sampleColorScript, sampleColorObj. Army Research'; '        Laboratory. '; ''};

            % Create LiteratureReferencesTab
            app.LiteratureReferencesTab = uitab(app.AboutUsTabGroup);
            app.LiteratureReferencesTab.AutoResizeChildren = 'off';
            app.LiteratureReferencesTab.Title = 'Literature References';
            app.LiteratureReferencesTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create ZanoniLabel
            app.ZanoniLabel = uilabel(app.LiteratureReferencesTab);
            app.ZanoniLabel.FontName = 'Arial';
            app.ZanoniLabel.FontSize = 14;
            app.ZanoniLabel.FontColor = [1 1 1];
            app.ZanoniLabel.Position = [19 65 503 88];
            app.ZanoniLabel.Text = {'Zanoni, K. P. S.;  Kariyazaki, B. K.;  Ito, A.;  Brennaman, M. K.;  Meyer, T. J.;'; '        Murakami Iha, N. Y., Blue-Green Iridium(III) Emitter and Comprehensive'; '        Photophysical Elucidation of Heteroleptic Cyclometalated Iridium(III)'; '        Complexes. Inorganic Chemistry 2014, 53 (8), 4089-4099.'; '        DOI: 10.1021/ic500070s'};

            % Create MurtazaLabel
            app.MurtazaLabel = uilabel(app.LiteratureReferencesTab);
            app.MurtazaLabel.FontName = 'Arial';
            app.MurtazaLabel.FontSize = 14;
            app.MurtazaLabel.FontColor = [1 1 1];
            app.MurtazaLabel.Position = [19 171 503 83];
            app.MurtazaLabel.Text = {'Murtaza, Z.;  Graff, D. K.;  Zipp, A. P.;  Worl, L. A.;  Jones, W. E., Jr.;  Bates,'; '        W. D.; Meyer, T. J., Energy Transfer in the Inverted Region: Calculation'; '        of Relative Rate Constants by Emission Spectral Fitting. The Journal of'; '        Physical Chemistry 1994, 98 (41), 10504-10513.	'; '        DOI: 10.1021/j100092a020'};

            % Create DossingLabel
            app.DossingLabel = uilabel(app.LiteratureReferencesTab);
            app.DossingLabel.FontName = 'Arial';
            app.DossingLabel.FontSize = 14;
            app.DossingLabel.FontColor = [1 1 1];
            app.DossingLabel.Position = [19 273 503 101];
            app.DossingLabel.Text = {'Dossing, A.;  Ryu, C. K.;  Kudo, S.; Ford, P. C., Competitive bimolecular'; '        electron- and energy-transfer quenching of the excited state(s) of the'; '        tetranuclear copper(I) cluster Cu4I4py4. Evidence for large reorganization'; '        energies in an excited-state electron transfer. Journal of the American'; '        Chemical Society 1993, 115 (12), 5132-5137.'; '        DOI: 10.1021/ja00065a026'};

            % Create ClaudeLabel
            app.ClaudeLabel = uilabel(app.LiteratureReferencesTab);
            app.ClaudeLabel.FontName = 'Arial';
            app.ClaudeLabel.FontSize = 14;
            app.ClaudeLabel.FontColor = [1 1 1];
            app.ClaudeLabel.Position = [19 449 503 39];
            app.ClaudeLabel.Text = {'Claude, J. P. Photophysics of Polypyridyl Complexes of Ru(II), Os(II), and'; '        Re(I). University of North Carolina at Chapel Hill, 1995.'; ''};

            % Create LiteratureReferencesLabel
            app.LiteratureReferencesLabel = uilabel(app.LiteratureReferencesTab);
            app.LiteratureReferencesLabel.HorizontalAlignment = 'center';
            app.LiteratureReferencesLabel.FontName = 'Arial Rounded MT Bold';
            app.LiteratureReferencesLabel.FontSize = 15;
            app.LiteratureReferencesLabel.FontWeight = 'bold';
            app.LiteratureReferencesLabel.FontColor = [1 1 1];
            app.LiteratureReferencesLabel.Position = [187 493 166 22];
            app.LiteratureReferencesLabel.Text = 'Literature References';

            % Create ZanoniLabel_2
            app.ZanoniLabel_2 = uilabel(app.LiteratureReferencesTab);
            app.ZanoniLabel_2.FontName = 'Arial';
            app.ZanoniLabel_2.FontSize = 14;
            app.ZanoniLabel_2.FontColor = [1 1 1];
            app.ZanoniLabel_2.Position = [19 27 503 20];
            app.ZanoniLabel_2.Text = 'Dr. Thomas N. Rohrabaugh, Jr. is thanked for the Ru(bpy)ÿ spectral data';

            % Create ZanoniLabel_3
            app.ZanoniLabel_3 = uilabel(app.LiteratureReferencesTab);
            app.ZanoniLabel_3.FontName = 'Arial';
            app.ZanoniLabel_3.FontSize = 14;
            app.ZanoniLabel_3.FontColor = [1 1 1];
            app.ZanoniLabel_3.Position = [19 393 514 37];
            app.ZanoniLabel_3.Text = {'Color & Vision Research Laboratory, 2-deg XYZ CMFs transformed from the'; '        CIE (2006) 2-deg LMS cone fundamentals adjusted to 2-deg. cvrl.org.'};

            % Create SampleSpectraTab
            app.SampleSpectraTab = uitab(app.AboutUsTabGroup);
            app.SampleSpectraTab.AutoResizeChildren = 'off';
            app.SampleSpectraTab.Title = 'Sample Spectra';
            app.SampleSpectraTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create OrganicDye910diphenylanthraceneinTOLPanel
            app.OrganicDye910diphenylanthraceneinTOLPanel = uipanel(app.SampleSpectraTab);
            app.OrganicDye910diphenylanthraceneinTOLPanel.AutoResizeChildren = 'off';
            app.OrganicDye910diphenylanthraceneinTOLPanel.ForegroundColor = [1 1 1];
            app.OrganicDye910diphenylanthraceneinTOLPanel.TitlePosition = 'centertop';
            app.OrganicDye910diphenylanthraceneinTOLPanel.Title = 'Organic Dye ÿ 9,10-diphenylanthracene in TOL';
            app.OrganicDye910diphenylanthraceneinTOLPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.OrganicDye910diphenylanthraceneinTOLPanel.FontName = 'Arial Rounded MT Bold';
            app.OrganicDye910diphenylanthraceneinTOLPanel.FontWeight = 'bold';
            app.OrganicDye910diphenylanthraceneinTOLPanel.FontSize = 15;
            app.OrganicDye910diphenylanthraceneinTOLPanel.Position = [43 361 458 144];

            % Create LoadEmissionData_292_organic
            app.LoadEmissionData_292_organic = uibutton(app.OrganicDye910diphenylanthraceneinTOLPanel, 'push');
            app.LoadEmissionData_292_organic.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_292_organicButtonPushed, true);
            app.LoadEmissionData_292_organic.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_292_organic.FontName = 'Arial';
            app.LoadEmissionData_292_organic.FontSize = 14;
            app.LoadEmissionData_292_organic.FontColor = [1 1 1];
            app.LoadEmissionData_292_organic.Position = [123 47 211 26];
            app.LoadEmissionData_292_organic.Text = 'Load Emission Data (292 K)';

            % Create LoadEmissionData_77_organic
            app.LoadEmissionData_77_organic = uibutton(app.OrganicDye910diphenylanthraceneinTOLPanel, 'push');
            app.LoadEmissionData_77_organic.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_77_organicButtonPushed, true);
            app.LoadEmissionData_77_organic.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_77_organic.FontName = 'Arial';
            app.LoadEmissionData_77_organic.FontSize = 14;
            app.LoadEmissionData_77_organic.FontColor = [1 1 1];
            app.LoadEmissionData_77_organic.Position = [123 13 211 26];
            app.LoadEmissionData_77_organic.Text = 'Load Emission Data (77 K)';

            % Create LoadExcitationData_292_organic
            app.LoadExcitationData_292_organic = uibutton(app.OrganicDye910diphenylanthraceneinTOLPanel, 'push');
            app.LoadExcitationData_292_organic.ButtonPushedFcn = createCallbackFcn(app, @LoadExcitationData_292_organicButtonPushed, true);
            app.LoadExcitationData_292_organic.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadExcitationData_292_organic.FontName = 'Arial';
            app.LoadExcitationData_292_organic.FontSize = 14;
            app.LoadExcitationData_292_organic.FontColor = [1 1 1];
            app.LoadExcitationData_292_organic.Position = [123 82 211 26];
            app.LoadExcitationData_292_organic.Text = 'Load Excitation Data (292 K)';

            % Create IridiumDyeIrpbtacacin2MeTHFPanel
            app.IridiumDyeIrpbtacacin2MeTHFPanel = uipanel(app.SampleSpectraTab);
            app.IridiumDyeIrpbtacacin2MeTHFPanel.AutoResizeChildren = 'off';
            app.IridiumDyeIrpbtacacin2MeTHFPanel.ForegroundColor = [1 1 1];
            app.IridiumDyeIrpbtacacin2MeTHFPanel.TitlePosition = 'centertop';
            app.IridiumDyeIrpbtacacin2MeTHFPanel.Title = 'Iridium Dye ÿ [Ir(pbt)ÿ(acac)] in 2-MeTHF';
            app.IridiumDyeIrpbtacacin2MeTHFPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.IridiumDyeIrpbtacacin2MeTHFPanel.FontName = 'Arial Rounded MT Bold';
            app.IridiumDyeIrpbtacacin2MeTHFPanel.FontWeight = 'bold';
            app.IridiumDyeIrpbtacacin2MeTHFPanel.FontSize = 15;
            app.IridiumDyeIrpbtacacin2MeTHFPanel.Position = [43 193 458 144];

            % Create LoadEmissionData_292_Ir
            app.LoadEmissionData_292_Ir = uibutton(app.IridiumDyeIrpbtacacin2MeTHFPanel, 'push');
            app.LoadEmissionData_292_Ir.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_292_IrPushed, true);
            app.LoadEmissionData_292_Ir.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_292_Ir.FontName = 'Arial';
            app.LoadEmissionData_292_Ir.FontSize = 14;
            app.LoadEmissionData_292_Ir.FontColor = [1 1 1];
            app.LoadEmissionData_292_Ir.Position = [123 47 211 26];
            app.LoadEmissionData_292_Ir.Text = 'Load Emission Data (292 K)';

            % Create LoadExcitationData_292_Ir
            app.LoadExcitationData_292_Ir = uibutton(app.IridiumDyeIrpbtacacin2MeTHFPanel, 'push');
            app.LoadExcitationData_292_Ir.ButtonPushedFcn = createCallbackFcn(app, @LoadExcitationData_292_IrPushed, true);
            app.LoadExcitationData_292_Ir.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadExcitationData_292_Ir.FontName = 'Arial';
            app.LoadExcitationData_292_Ir.FontSize = 14;
            app.LoadExcitationData_292_Ir.FontColor = [1 1 1];
            app.LoadExcitationData_292_Ir.Position = [123 82 211 26];
            app.LoadExcitationData_292_Ir.Text = 'Load Excitation Data (292 K)';

            % Create LoadEmissionData_77_Ir
            app.LoadEmissionData_77_Ir = uibutton(app.IridiumDyeIrpbtacacin2MeTHFPanel, 'push');
            app.LoadEmissionData_77_Ir.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_77_IrButtonPushed, true);
            app.LoadEmissionData_77_Ir.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_77_Ir.FontName = 'Arial';
            app.LoadEmissionData_77_Ir.FontSize = 14;
            app.LoadEmissionData_77_Ir.FontColor = [1 1 1];
            app.LoadEmissionData_77_Ir.Position = [123 13 211 26];
            app.LoadEmissionData_77_Ir.Text = 'Load Emission Data (77 K)';

            % Create RutheniumDyeRubpyClin31vvEtOHMeOHPanel
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel = uipanel(app.SampleSpectraTab);
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.AutoResizeChildren = 'off';
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.ForegroundColor = [1 1 1];
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.TitlePosition = 'centertop';
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.Title = 'Ruthenium Dye ÿ [Ru(bpy)ÿ]Clÿ in (3:1, v/v) EtOH/MeOH';
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.FontName = 'Arial Rounded MT Bold';
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.FontWeight = 'bold';
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.FontSize = 15;
            app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel.Position = [43 26 458 144];

            % Create LoadExcitationData_292_Ru
            app.LoadExcitationData_292_Ru = uibutton(app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel, 'push');
            app.LoadExcitationData_292_Ru.ButtonPushedFcn = createCallbackFcn(app, @LoadExcitationData_292_RuButtonPushed, true);
            app.LoadExcitationData_292_Ru.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadExcitationData_292_Ru.FontName = 'Arial';
            app.LoadExcitationData_292_Ru.FontSize = 14;
            app.LoadExcitationData_292_Ru.FontColor = [1 1 1];
            app.LoadExcitationData_292_Ru.Position = [123 82 211 26];
            app.LoadExcitationData_292_Ru.Text = 'Load Excitation Data (292 K)';

            % Create LoadEmissionData_292_Ru
            app.LoadEmissionData_292_Ru = uibutton(app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel, 'push');
            app.LoadEmissionData_292_Ru.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_292_RuButtonPushed, true);
            app.LoadEmissionData_292_Ru.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_292_Ru.FontName = 'Arial';
            app.LoadEmissionData_292_Ru.FontSize = 14;
            app.LoadEmissionData_292_Ru.FontColor = [1 1 1];
            app.LoadEmissionData_292_Ru.Position = [123 47 211 26];
            app.LoadEmissionData_292_Ru.Text = 'Load Emission Data (292 K)';

            % Create LoadEmissionData_77_Ru
            app.LoadEmissionData_77_Ru = uibutton(app.RutheniumDyeRubpyClin31vvEtOHMeOHPanel, 'push');
            app.LoadEmissionData_77_Ru.ButtonPushedFcn = createCallbackFcn(app, @LoadEmissionData_77_RuButtonPushed, true);
            app.LoadEmissionData_77_Ru.BackgroundColor = [0.4392 0.451 0.4588];
            app.LoadEmissionData_77_Ru.FontName = 'Arial';
            app.LoadEmissionData_77_Ru.FontSize = 14;
            app.LoadEmissionData_77_Ru.FontColor = [1 1 1];
            app.LoadEmissionData_77_Ru.Position = [123 13 211 26];
            app.LoadEmissionData_77_Ru.Text = 'Load Emission Data (77 K)';

            % Create SelectIntersectPanel
            app.SelectIntersectPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.SelectIntersectPanel.AutoResizeChildren = 'off';
            app.SelectIntersectPanel.ForegroundColor = [1 1 1];
            app.SelectIntersectPanel.TitlePosition = 'centertop';
            app.SelectIntersectPanel.Title = 'Select Intersect';
            app.SelectIntersectPanel.Visible = 'off';
            app.SelectIntersectPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.SelectIntersectPanel.FontName = 'Arial Rounded MT Bold';
            app.SelectIntersectPanel.FontWeight = 'bold';
            app.SelectIntersectPanel.FontSize = 16;
            app.SelectIntersectPanel.Position = [296 232 481 173];

            % Create SelectPointDialogue
            app.SelectPointDialogue = uilabel(app.SelectIntersectPanel);
            app.SelectPointDialogue.HorizontalAlignment = 'center';
            app.SelectPointDialogue.FontName = 'Arial';
            app.SelectPointDialogue.FontSize = 14;
            app.SelectPointDialogue.FontColor = [1 1 1];
            app.SelectPointDialogue.Position = [14 69 453 65];
            app.SelectPointDialogue.Text = {'Using your cursor, please carefully click the intersection '; 'of the relevant excitation and emission spectra on the'; 'graph, then press the "Point Selected" button below.'};

            % Create PointSelectedButton
            app.PointSelectedButton = uibutton(app.SelectIntersectPanel, 'push');
            app.PointSelectedButton.ButtonPushedFcn = createCallbackFcn(app, @PointSelectedButtonPushed, true);
            app.PointSelectedButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.PointSelectedButton.FontName = 'Arial Hebrew Scholar';
            app.PointSelectedButton.FontSize = 14.5;
            app.PointSelectedButton.FontColor = [1 1 1];
            app.PointSelectedButton.Position = [151 14 179 44];
            app.PointSelectedButton.Text = 'Point Selected';

            % Create SettingsPanel
            app.SettingsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.SettingsPanel.AutoResizeChildren = 'off';
            app.SettingsPanel.ForegroundColor = [1 1 1];
            app.SettingsPanel.TitlePosition = 'centertop';
            app.SettingsPanel.Title = 'Settings';
            app.SettingsPanel.Visible = 'off';
            app.SettingsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.SettingsPanel.FontName = 'Arial Rounded MT Bold';
            app.SettingsPanel.FontWeight = 'bold';
            app.SettingsPanel.FontSize = 16;
            app.SettingsPanel.Position = [576 265 485 512];

            % Create TabGroup
            app.TabGroup = uitabgroup(app.SettingsPanel);
            app.TabGroup.AutoResizeChildren = 'off';
            app.TabGroup.TabLocation = 'left';
            app.TabGroup.Position = [0 1 485 488];

            % Create GeneralTab
            app.GeneralTab = uitab(app.TabGroup);
            app.GeneralTab.AutoResizeChildren = 'off';
            app.GeneralTab.Title = 'General';
            app.GeneralTab.BackgroundColor = [0.4392 0.451 0.4588];
            app.GeneralTab.Scrollable = 'on';

            % Create GeneralSettingsPanel
            app.GeneralSettingsPanel = uipanel(app.GeneralTab);
            app.GeneralSettingsPanel.AutoResizeChildren = 'off';
            app.GeneralSettingsPanel.ForegroundColor = [1 1 1];
            app.GeneralSettingsPanel.BorderType = 'none';
            app.GeneralSettingsPanel.TitlePosition = 'centertop';
            app.GeneralSettingsPanel.Title = 'General Settings';
            app.GeneralSettingsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.GeneralSettingsPanel.FontName = 'Arial Rounded MT Bold';
            app.GeneralSettingsPanel.FontWeight = 'bold';
            app.GeneralSettingsPanel.FontSize = 15;
            app.GeneralSettingsPanel.Position = [9 11 359 475];

            % Create Allowmultipleimportedspectra
            app.Allowmultipleimportedspectra = uicheckbox(app.GeneralSettingsPanel);
            app.Allowmultipleimportedspectra.ValueChangedFcn = createCallbackFcn(app, @AllowmultipleimportedspectraValueChanged, true);
            app.Allowmultipleimportedspectra.Text = 'Allow multiple data spectra on axes';
            app.Allowmultipleimportedspectra.FontName = 'Arial';
            app.Allowmultipleimportedspectra.FontSize = 14;
            app.Allowmultipleimportedspectra.FontColor = [1 1 1];
            app.Allowmultipleimportedspectra.Position = [8 380 283 22];

            % Create RetrieveimportfiletitleCheckBox
            app.RetrieveimportfiletitleCheckBox = uicheckbox(app.GeneralSettingsPanel);
            app.RetrieveimportfiletitleCheckBox.ValueChangedFcn = createCallbackFcn(app, @RetrieveimportfiletitleValueChanged, true);
            app.RetrieveimportfiletitleCheckBox.Text = 'Retrieve import file title';
            app.RetrieveimportfiletitleCheckBox.FontName = 'Arial';
            app.RetrieveimportfiletitleCheckBox.FontSize = 14;
            app.RetrieveimportfiletitleCheckBox.FontColor = [1 1 1];
            app.RetrieveimportfiletitleCheckBox.Position = [8 284 220 22];
            app.RetrieveimportfiletitleCheckBox.Value = true;

            % Create FigureSettingsLabel
            app.FigureSettingsLabel = uilabel(app.GeneralSettingsPanel);
            app.FigureSettingsLabel.HorizontalAlignment = 'center';
            app.FigureSettingsLabel.FontName = 'Arial Rounded MT Bold';
            app.FigureSettingsLabel.FontSize = 14;
            app.FigureSettingsLabel.FontWeight = 'bold';
            app.FigureSettingsLabel.FontColor = [1 1 1];
            app.FigureSettingsLabel.Position = [126 405 109 22];
            app.FigureSettingsLabel.Text = 'Figure Settings';

            % Create ShowdatapeaklabelsCheckBox
            app.ShowdatapeaklabelsCheckBox = uicheckbox(app.GeneralSettingsPanel);
            app.ShowdatapeaklabelsCheckBox.ValueChangedFcn = createCallbackFcn(app, @ShowdatapeaksValueChanged, true);
            app.ShowdatapeaklabelsCheckBox.Text = 'Show data peak labels';
            app.ShowdatapeaklabelsCheckBox.FontName = 'Arial';
            app.ShowdatapeaklabelsCheckBox.FontSize = 14;
            app.ShowdatapeaklabelsCheckBox.FontColor = [1 1 1];
            app.ShowdatapeaklabelsCheckBox.Position = [8 332 224 22];
            app.ShowdatapeaklabelsCheckBox.Value = true;

            % Create ShowlegendongraphCheckBox
            app.ShowlegendongraphCheckBox = uicheckbox(app.GeneralSettingsPanel);
            app.ShowlegendongraphCheckBox.ValueChangedFcn = createCallbackFcn(app, @ShowlegendongraphValueChanged, true);
            app.ShowlegendongraphCheckBox.Text = 'Show legend on graph';
            app.ShowlegendongraphCheckBox.FontName = 'Arial';
            app.ShowlegendongraphCheckBox.FontSize = 14;
            app.ShowlegendongraphCheckBox.FontColor = [1 1 1];
            app.ShowlegendongraphCheckBox.Position = [8 356 220 22];

            % Create Formatfiguresforpublicationbeforeex
            app.Formatfiguresforpublicationbeforeex = uicheckbox(app.GeneralSettingsPanel);
            app.Formatfiguresforpublicationbeforeex.ValueChangedFcn = createCallbackFcn(app, @FormatfiguresforpublicationValueChanged, true);
            app.Formatfiguresforpublicationbeforeex.Text = 'Format figures for publication before export';
            app.Formatfiguresforpublicationbeforeex.FontName = 'Arial';
            app.Formatfiguresforpublicationbeforeex.FontSize = 14;
            app.Formatfiguresforpublicationbeforeex.FontColor = [1 1 1];
            app.Formatfiguresforpublicationbeforeex.Position = [8 308 315 22];
            app.Formatfiguresforpublicationbeforeex.Value = true;

            % Create IntensityNormalizationLabel
            app.IntensityNormalizationLabel = uilabel(app.GeneralSettingsPanel);
            app.IntensityNormalizationLabel.HorizontalAlignment = 'center';
            app.IntensityNormalizationLabel.FontName = 'Arial Rounded MT Bold';
            app.IntensityNormalizationLabel.FontSize = 14;
            app.IntensityNormalizationLabel.FontWeight = 'bold';
            app.IntensityNormalizationLabel.FontColor = [1 1 1];
            app.IntensityNormalizationLabel.Position = [99 157 162 22];
            app.IntensityNormalizationLabel.Text = 'Intensity Normalization';

            % Create NormalizespectratohighCheckBox
            app.NormalizespectratohighCheckBox = uicheckbox(app.GeneralSettingsPanel);
            app.NormalizespectratohighCheckBox.ValueChangedFcn = createCallbackFcn(app, @NormalizespectraValueChanged, true);
            app.NormalizespectratohighCheckBox.Text = 'Normalize spectra to highest peak';
            app.NormalizespectratohighCheckBox.FontName = 'Arial';
            app.NormalizespectratohighCheckBox.FontSize = 14;
            app.NormalizespectratohighCheckBox.FontColor = [1 1 1];
            app.NormalizespectratohighCheckBox.Position = [8 131 235 22];
            app.NormalizespectratohighCheckBox.Value = true;

            % Create SelectpeakfornormalizationButton
            app.SelectpeakfornormalizationButton = uibutton(app.GeneralSettingsPanel, 'push');
            app.SelectpeakfornormalizationButton.ButtonPushedFcn = createCallbackFcn(app, @SelectpeakfornormalizationButtonPushed, true);
            app.SelectpeakfornormalizationButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.SelectpeakfornormalizationButton.FontName = 'Arial';
            app.SelectpeakfornormalizationButton.FontSize = 14;
            app.SelectpeakfornormalizationButton.FontColor = [1 1 1];
            app.SelectpeakfornormalizationButton.Enable = 'off';
            app.SelectpeakfornormalizationButton.Position = [18 69 324 28];
            app.SelectpeakfornormalizationButton.Text = 'Select peak for normalization*';

            % Create Requiresatleastonespectrum
            app.Requiresatleastonespectrum = uilabel(app.GeneralSettingsPanel);
            app.Requiresatleastonespectrum.HorizontalAlignment = 'center';
            app.Requiresatleastonespectrum.FontName = 'Arial';
            app.Requiresatleastonespectrum.FontSize = 14;
            app.Requiresatleastonespectrum.FontColor = [1 1 1];
            app.Requiresatleastonespectrum.Position = [9 2 342 22];
            app.Requiresatleastonespectrum.Text = '*Applies only to currently selected spectrum';

            % Create RenormalizeallspectraButton
            app.RenormalizeallspectraButton = uibutton(app.GeneralSettingsPanel, 'push');
            app.RenormalizeallspectraButton.ButtonPushedFcn = createCallbackFcn(app, @RenormalizeallspectraButtonPushed, true);
            app.RenormalizeallspectraButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.RenormalizeallspectraButton.FontName = 'Arial';
            app.RenormalizeallspectraButton.FontSize = 14;
            app.RenormalizeallspectraButton.FontColor = [1 1 1];
            app.RenormalizeallspectraButton.Enable = 'off';
            app.RenormalizeallspectraButton.Position = [18 33 324 28];
            app.RenormalizeallspectraButton.Text = 'Renormalize all spectra to maximum intensity 1';

            % Create YAxisLimitsButtonGroup
            app.YAxisLimitsButtonGroup = uibuttongroup(app.GeneralSettingsPanel);
            app.YAxisLimitsButtonGroup.AutoResizeChildren = 'off';
            app.YAxisLimitsButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @YAxisLimitsButtonGroupSelectionChanged, true);
            app.YAxisLimitsButtonGroup.ForegroundColor = [1 1 1];
            app.YAxisLimitsButtonGroup.BorderType = 'none';
            app.YAxisLimitsButtonGroup.BackgroundColor = [0.4392 0.451 0.4588];
            app.YAxisLimitsButtonGroup.Position = [10 196 349 64];

            % Create SetYAxismaximumvalueto1Button
            app.SetYAxismaximumvalueto1Button = uiradiobutton(app.YAxisLimitsButtonGroup);
            app.SetYAxismaximumvalueto1Button.Text = {'Set Y-Axis maximum value to 1 (Recommended'; 'with normalization)'};
            app.SetYAxismaximumvalueto1Button.FontName = 'Arial';
            app.SetYAxismaximumvalueto1Button.FontSize = 14;
            app.SetYAxismaximumvalueto1Button.FontColor = [1 1 1];
            app.SetYAxismaximumvalueto1Button.Position = [0 26 337 33];
            app.SetYAxismaximumvalueto1Button.Value = true;

            % Create ShowalldatapeaksautoButton
            app.ShowalldatapeaksautoButton = uiradiobutton(app.YAxisLimitsButtonGroup);
            app.ShowalldatapeaksautoButton.Text = 'Show all data peaks (automatically select limits)';
            app.ShowalldatapeaksautoButton.FontName = 'Arial';
            app.ShowalldatapeaksautoButton.FontSize = 14;
            app.ShowalldatapeaksautoButton.FontColor = [1 1 1];
            app.ShowalldatapeaksautoButton.Position = [0 1 322 22];

            % Create YAxisSettingsLabel
            app.YAxisSettingsLabel = uilabel(app.GeneralSettingsPanel);
            app.YAxisSettingsLabel.HorizontalAlignment = 'center';
            app.YAxisSettingsLabel.FontName = 'Arial Rounded MT Bold';
            app.YAxisSettingsLabel.FontSize = 14;
            app.YAxisSettingsLabel.FontWeight = 'bold';
            app.YAxisSettingsLabel.FontColor = [1 1 1];
            app.YAxisSettingsLabel.Position = [127 258 107 22];
            app.YAxisSettingsLabel.Text = 'Y-Axis Settings';

            % Create ShowTips
            app.ShowTips = uicheckbox(app.GeneralSettingsPanel);
            app.ShowTips.ValueChangedFcn = createCallbackFcn(app, @ShowTipsValueChanged, true);
            app.ShowTips.Text = 'Show tips';
            app.ShowTips.FontName = 'Arial';
            app.ShowTips.FontSize = 14;
            app.ShowTips.FontColor = [1 1 1];
            app.ShowTips.Position = [8 421 365 27];

            % Create Correctforshift_checkbox
            app.Correctforshift_checkbox = uicheckbox(app.GeneralSettingsPanel);
            app.Correctforshift_checkbox.Text = 'Correct for baseline shift';
            app.Correctforshift_checkbox.FontName = 'Arial';
            app.Correctforshift_checkbox.FontSize = 14;
            app.Correctforshift_checkbox.FontColor = [1 1 1];
            app.Correctforshift_checkbox.Position = [8 106 174 22];
            app.Correctforshift_checkbox.Value = true;

            % Create XAxisTab
            app.XAxisTab = uitab(app.TabGroup);
            app.XAxisTab.AutoResizeChildren = 'off';
            app.XAxisTab.Title = 'X-Axis';
            app.XAxisTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create XAxisSettingsButtonGroup
            app.XAxisSettingsButtonGroup = uibuttongroup(app.XAxisTab);
            app.XAxisSettingsButtonGroup.AutoResizeChildren = 'off';
            app.XAxisSettingsButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @FitSettingsButtonGroupSelectionChanged, true);
            app.XAxisSettingsButtonGroup.ForegroundColor = [1 1 1];
            app.XAxisSettingsButtonGroup.BorderType = 'none';
            app.XAxisSettingsButtonGroup.TitlePosition = 'centertop';
            app.XAxisSettingsButtonGroup.Title = 'X-Axis Settings';
            app.XAxisSettingsButtonGroup.BackgroundColor = [0.4392 0.451 0.4588];
            app.XAxisSettingsButtonGroup.FontName = 'Arial Rounded MT Bold';
            app.XAxisSettingsButtonGroup.FontWeight = 'bold';
            app.XAxisSettingsButtonGroup.FontSize = 15;
            app.XAxisSettingsButtonGroup.Position = [9 24 355 459];

            % Create ManuallyadjustXaxisandfitlim
            app.ManuallyadjustXaxisandfitlim = uiradiobutton(app.XAxisSettingsButtonGroup);
            app.ManuallyadjustXaxisandfitlim.Text = 'Manually adjust fit limits';
            app.ManuallyadjustXaxisandfitlim.FontName = 'Arial';
            app.ManuallyadjustXaxisandfitlim.FontSize = 14;
            app.ManuallyadjustXaxisandfitlim.FontColor = [1 1 1];
            app.ManuallyadjustXaxisandfitlim.Position = [10 341 169 22];

            % Create AutofitXaxisandfitlimitsButton
            app.AutofitXaxisandfitlimitsButton = uiradiobutton(app.XAxisSettingsButtonGroup);
            app.AutofitXaxisandfitlimitsButton.Text = 'Autofit X-axis and fit limits';
            app.AutofitXaxisandfitlimitsButton.FontName = 'Arial';
            app.AutofitXaxisandfitlimitsButton.FontSize = 14;
            app.AutofitXaxisandfitlimitsButton.FontColor = [1 1 1];
            app.AutofitXaxisandfitlimitsButton.Position = [10 319 183 22];
            app.AutofitXaxisandfitlimitsButton.Value = true;

            % Create XAxisAutofitLabel
            app.XAxisAutofitLabel = uilabel(app.XAxisSettingsButtonGroup);
            app.XAxisAutofitLabel.HorizontalAlignment = 'center';
            app.XAxisAutofitLabel.FontName = 'Arial Rounded MT Bold';
            app.XAxisAutofitLabel.FontSize = 14;
            app.XAxisAutofitLabel.FontWeight = 'bold';
            app.XAxisAutofitLabel.FontColor = [1 1 1];
            app.XAxisAutofitLabel.Position = [138.5 363 96 22];
            app.XAxisAutofitLabel.Text = 'X-Axis Autofit';

            % Create Panel
            app.Panel = uipanel(app.XAxisSettingsButtonGroup);
            app.Panel.AutoResizeChildren = 'off';
            app.Panel.ForegroundColor = [1 1 1];
            app.Panel.BorderType = 'none';
            app.Panel.TitlePosition = 'centertop';
            app.Panel.BackgroundColor = [0.4392 0.451 0.4588];
            app.Panel.FontName = 'Arial Rounded MT Bold';
            app.Panel.FontWeight = 'bold';
            app.Panel.FontSize = 14;
            app.Panel.Position = [1 6 353 278];

            % Create Xmax_editField
            app.Xmax_editField = uieditfield(app.Panel, 'numeric');
            app.Xmax_editField.Limits = [0 100000];
            app.Xmax_editField.ValueChangedFcn = createCallbackFcn(app, @Xmax_editFieldValueChanged, true);
            app.Xmax_editField.FontName = 'Arial';
            app.Xmax_editField.FontColor = [1 1 1];
            app.Xmax_editField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Xmax_editField.Position = [137 108 92 22];
            app.Xmax_editField.Value = 33500;

            % Create XmaximumSliderLabel
            app.XmaximumSliderLabel = uilabel(app.Panel);
            app.XmaximumSliderLabel.HorizontalAlignment = 'right';
            app.XmaximumSliderLabel.FontName = 'Arial';
            app.XmaximumSliderLabel.FontSize = 13;
            app.XmaximumSliderLabel.FontColor = [1 1 1];
            app.XmaximumSliderLabel.Position = [28 156 75 22];
            app.XmaximumSliderLabel.Text = 'X-maximum';

            % Create XmaximumSlider
            app.XmaximumSlider = uislider(app.Panel);
            app.XmaximumSlider.Limits = [0 100000];
            app.XmaximumSlider.MajorTicks = [0 50000 100000];
            app.XmaximumSlider.MajorTickLabels = {'0', '5', '10'};
            app.XmaximumSlider.ValueChangedFcn = createCallbackFcn(app, @XmaximumSliderValueChanged, true);
            app.XmaximumSlider.FontName = 'Arial';
            app.XmaximumSlider.FontColor = [1 1 1];
            app.XmaximumSlider.Position = [124 165 136 3];
            app.XmaximumSlider.Value = 33500;

            % Create cmLabel_5
            app.cmLabel_5 = uilabel(app.Panel);
            app.cmLabel_5.HorizontalAlignment = 'center';
            app.cmLabel_5.FontName = 'Arial';
            app.cmLabel_5.FontColor = [1 1 1];
            app.cmLabel_5.Position = [278 156 70 22];
            app.cmLabel_5.Text = '(×10ÿ cmÿ¹)';

            % Create Xmin_editField
            app.Xmin_editField = uieditfield(app.Panel, 'numeric');
            app.Xmin_editField.Limits = [0 100000];
            app.Xmin_editField.ValueChangedFcn = createCallbackFcn(app, @Xmin_editFieldValueChanged, true);
            app.Xmin_editField.FontName = 'Arial';
            app.Xmin_editField.FontColor = [1 1 1];
            app.Xmin_editField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Xmin_editField.Position = [137 196 92 22];
            app.Xmin_editField.Value = 11000;

            % Create XminimumSliderLabel
            app.XminimumSliderLabel = uilabel(app.Panel);
            app.XminimumSliderLabel.HorizontalAlignment = 'right';
            app.XminimumSliderLabel.FontName = 'Arial';
            app.XminimumSliderLabel.FontSize = 13;
            app.XminimumSliderLabel.FontColor = [1 1 1];
            app.XminimumSliderLabel.Position = [32 244 71 22];
            app.XminimumSliderLabel.Text = 'X-minimum';

            % Create XminimumSlider
            app.XminimumSlider = uislider(app.Panel);
            app.XminimumSlider.Limits = [0 100000];
            app.XminimumSlider.MajorTicks = [0 50000 100000];
            app.XminimumSlider.MajorTickLabels = {'0', '5', '10', ''};
            app.XminimumSlider.ValueChangedFcn = createCallbackFcn(app, @XminimumSliderValueChanged, true);
            app.XminimumSlider.FontName = 'Arial';
            app.XminimumSlider.FontColor = [1 1 1];
            app.XminimumSlider.Position = [124 253 136 3];
            app.XminimumSlider.Value = 11000;

            % Create cmLabel_6
            app.cmLabel_6 = uilabel(app.Panel);
            app.cmLabel_6.HorizontalAlignment = 'center';
            app.cmLabel_6.FontName = 'Arial';
            app.cmLabel_6.FontColor = [1 1 1];
            app.cmLabel_6.Position = [274 242 70 22];
            app.cmLabel_6.Text = '(×10ÿ cmÿ¹)';

            % Create Xres_editField
            app.Xres_editField = uieditfield(app.Panel, 'numeric');
            app.Xres_editField.Limits = [1 100];
            app.Xres_editField.ValueChangedFcn = createCallbackFcn(app, @Xres_editFieldValueChanged, true);
            app.Xres_editField.FontName = 'Arial';
            app.Xres_editField.FontColor = [1 1 1];
            app.Xres_editField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Xres_editField.Position = [138 14 92 22];
            app.Xres_editField.Value = 50;

            % Create XresolutionSliderLabel
            app.XresolutionSliderLabel = uilabel(app.Panel);
            app.XresolutionSliderLabel.HorizontalAlignment = 'right';
            app.XresolutionSliderLabel.FontName = 'Arial';
            app.XresolutionSliderLabel.FontSize = 13;
            app.XresolutionSliderLabel.FontColor = [1 1 1];
            app.XresolutionSliderLabel.Position = [29 62 75 22];
            app.XresolutionSliderLabel.Text = 'X-resolution';

            % Create XresolutionSlider
            app.XresolutionSlider = uislider(app.Panel);
            app.XresolutionSlider.Limits = [1 100];
            app.XresolutionSlider.MajorTicks = [1 50 100];
            app.XresolutionSlider.MajorTickLabels = {'1', '50', '100'};
            app.XresolutionSlider.ValueChangedFcn = createCallbackFcn(app, @XresolutionSliderValueChanged, true);
            app.XresolutionSlider.FontName = 'Arial';
            app.XresolutionSlider.FontColor = [1 1 1];
            app.XresolutionSlider.Position = [124 71 136 3];
            app.XresolutionSlider.Value = 50;

            % Create cmLabel_7
            app.cmLabel_7 = uilabel(app.Panel);
            app.cmLabel_7.HorizontalAlignment = 'center';
            app.cmLabel_7.FontName = 'Arial';
            app.cmLabel_7.FontColor = [1 1 1];
            app.cmLabel_7.Position = [293 62 40 22];
            app.cmLabel_7.Text = '(cmÿ¹)';

            % Create nmLabel
            app.nmLabel = uilabel(app.Panel);
            app.nmLabel.BackgroundColor = [0.4392 0.451 0.4588];
            app.nmLabel.HorizontalAlignment = 'center';
            app.nmLabel.FontName = 'Arial';
            app.nmLabel.FontColor = [1 1 1];
            app.nmLabel.Visible = 'off';
            app.nmLabel.Position = [274 156 74 22];
            app.nmLabel.Text = '(nm)';

            % Create nmLabel_2
            app.nmLabel_2 = uilabel(app.Panel);
            app.nmLabel_2.BackgroundColor = [0.4392 0.451 0.4588];
            app.nmLabel_2.HorizontalAlignment = 'center';
            app.nmLabel_2.FontName = 'Arial';
            app.nmLabel_2.FontColor = [1 1 1];
            app.nmLabel_2.Visible = 'off';
            app.nmLabel_2.Position = [276 244 74 22];
            app.nmLabel_2.Text = '(nm)';

            % Create Wave_switch
            app.Wave_switch = uiswitch(app.XAxisSettingsButtonGroup, 'slider');
            app.Wave_switch.Items = {'Wavenumber', 'Wavelength'};
            app.Wave_switch.ValueChangedFcn = createCallbackFcn(app, @Wave_switchValueChanged, true);
            app.Wave_switch.FontName = 'Arial';
            app.Wave_switch.FontSize = 14;
            app.Wave_switch.FontColor = [1 1 1];
            app.Wave_switch.Position = [158 397 57 25];
            app.Wave_switch.Value = 'Wavenumber';

            % Create Xaxiswithfit_checkBox
            app.Xaxiswithfit_checkBox = uicheckbox(app.XAxisSettingsButtonGroup);
            app.Xaxiswithfit_checkBox.ValueChangedFcn = createCallbackFcn(app, @Xaxiswithfit_checkBoxValueChanged, true);
            app.Xaxiswithfit_checkBox.Enable = 'off';
            app.Xaxiswithfit_checkBox.Text = 'Adjust X-Axis range as well as fit limits';
            app.Xaxiswithfit_checkBox.FontName = 'Arial';
            app.Xaxiswithfit_checkBox.FontSize = 14;
            app.Xaxiswithfit_checkBox.FontColor = [1 1 1];
            app.Xaxiswithfit_checkBox.Position = [10 288 283 22];
            app.Xaxiswithfit_checkBox.Value = true;

            % Create Autofit_transparent_panel
            app.Autofit_transparent_panel = uipanel(app.XAxisTab);
            app.Autofit_transparent_panel.AutoResizeChildren = 'off';
            app.Autofit_transparent_panel.BorderType = 'none';
            app.Autofit_transparent_panel.BackgroundColor = [0.4392 0.451 0.4588];
            app.Autofit_transparent_panel.FontSize = 14;
            app.Autofit_transparent_panel.Position = [6 120 361 182];

            % Create XAxisvaluesarebeingcontroll
            app.XAxisvaluesarebeingcontroll = uilabel(app.Autofit_transparent_panel);
            app.XAxisvaluesarebeingcontroll.HorizontalAlignment = 'center';
            app.XAxisvaluesarebeingcontroll.FontName = 'Arial';
            app.XAxisvaluesarebeingcontroll.FontSize = 14;
            app.XAxisvaluesarebeingcontroll.FontColor = [1 1 1];
            app.XAxisvaluesarebeingcontroll.Position = [107 74 160 33];
            app.XAxisvaluesarebeingcontroll.Text = {'X-Axis values are being'; 'controlled by autofit.'};

            % Create FitTab
            app.FitTab = uitab(app.TabGroup);
            app.FitTab.AutoResizeChildren = 'off';
            app.FitTab.Title = 'Fit';
            app.FitTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create FittingFunctionSettingsPanel
            app.FittingFunctionSettingsPanel = uipanel(app.FitTab);
            app.FittingFunctionSettingsPanel.AutoResizeChildren = 'off';
            app.FittingFunctionSettingsPanel.ForegroundColor = [1 1 1];
            app.FittingFunctionSettingsPanel.BorderType = 'none';
            app.FittingFunctionSettingsPanel.TitlePosition = 'centertop';
            app.FittingFunctionSettingsPanel.Title = 'Fitting Function Settings';
            app.FittingFunctionSettingsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.FittingFunctionSettingsPanel.FontName = 'Arial Rounded MT Bold';
            app.FittingFunctionSettingsPanel.FontWeight = 'bold';
            app.FittingFunctionSettingsPanel.FontSize = 15;
            app.FittingFunctionSettingsPanel.Position = [10 14 354 466];

            % Create AutomaticallycalculateCoefficient
            app.AutomaticallycalculateCoefficient = uicheckbox(app.FittingFunctionSettingsPanel);
            app.AutomaticallycalculateCoefficient.ValueChangedFcn = createCallbackFcn(app, @AutomaticallycalculateValueChanged, true);
            app.AutomaticallycalculateCoefficient.Text = {'Automatically calculate Coefficient of '; 'Determination (R²)'};
            app.AutomaticallycalculateCoefficient.FontName = 'Arial';
            app.AutomaticallycalculateCoefficient.FontSize = 14;
            app.AutomaticallycalculateCoefficient.FontColor = [1 1 1];
            app.AutomaticallycalculateCoefficient.Position = [11 316 309 42];
            app.AutomaticallycalculateCoefficient.Value = true;

            % Create Automaticallyplotfit
            app.Automaticallyplotfit = uicheckbox(app.FittingFunctionSettingsPanel);
            app.Automaticallyplotfit.ValueChangedFcn = createCallbackFcn(app, @AutomaticallyplotfitValueChanged, true);
            app.Automaticallyplotfit.Text = {'Automatically plot fit after changing parameter '; 'values'};
            app.Automaticallyplotfit.FontName = 'Arial';
            app.Automaticallyplotfit.FontSize = 14;
            app.Automaticallyplotfit.FontColor = [1 1 1];
            app.Automaticallyplotfit.Position = [11 354 339 42];
            app.Automaticallyplotfit.Value = true;

            % Create E00ButtonGroup
            app.E00ButtonGroup = uibuttongroup(app.FittingFunctionSettingsPanel);
            app.E00ButtonGroup.AutoResizeChildren = 'off';
            app.E00ButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @E00CalculationSelectionChanged, true);
            app.E00ButtonGroup.ForegroundColor = [1 1 1];
            app.E00ButtonGroup.BorderType = 'none';
            app.E00ButtonGroup.BackgroundColor = [0.4392 0.451 0.4588];
            app.E00ButtonGroup.Position = [3 198 342 114];

            % Create FullFCSLAfitButton
            app.FullFCSLAfitButton = uiradiobutton(app.E00ButtonGroup);
            app.FullFCSLAfitButton.Text = 'Full FCSLA fit';
            app.FullFCSLAfitButton.FontName = 'Arial';
            app.FullFCSLAfitButton.FontSize = 14;
            app.FullFCSLAfitButton.FontColor = [1 1 1];
            app.FullFCSLAfitButton.Position = [7 65 108 22];
            app.FullFCSLAfitButton.Value = true;

            % Create XRuleButton
            app.XRuleButton = uiradiobutton(app.E00ButtonGroup);
            app.XRuleButton.Text = 'X% Rule';
            app.XRuleButton.FontName = 'Arial';
            app.XRuleButton.FontSize = 14;
            app.XRuleButton.FontColor = [1 1 1];
            app.XRuleButton.Position = [7 41 76 22];

            % Create E0CalculationLabel
            app.E0CalculationLabel = uilabel(app.E00ButtonGroup);
            app.E0CalculationLabel.HorizontalAlignment = 'center';
            app.E0CalculationLabel.FontName = 'Arial Rounded MT Bold';
            app.E0CalculationLabel.FontSize = 14;
            app.E0CalculationLabel.FontWeight = 'bold';
            app.E0CalculationLabel.FontColor = [1 1 1];
            app.E0CalculationLabel.Position = [104 87 155 22];
            app.E0CalculationLabel.Text = 'Eÿ Calculation Method';

            % Create Intersectionofemission
            app.Intersectionofemission = uiradiobutton(app.E00ButtonGroup);
            app.Intersectionofemission.Text = 'Intersection of emission and excitation spectra';
            app.Intersectionofemission.FontName = 'Arial';
            app.Intersectionofemission.FontSize = 14;
            app.Intersectionofemission.FontColor = [1 1 1];
            app.Intersectionofemission.Position = [7 17 313 22];

            % Create percentRuleDropDown
            app.percentRuleDropDown = uidropdown(app.E00ButtonGroup);
            app.percentRuleDropDown.Items = {'1%', '10%'};
            app.percentRuleDropDown.ItemsData = {'1', '10'};
            app.percentRuleDropDown.ValueChangedFcn = createCallbackFcn(app, @percentRuleDropDownValueChanged, true);
            app.percentRuleDropDown.FontName = 'Arial';
            app.percentRuleDropDown.FontSize = 14;
            app.percentRuleDropDown.FontColor = [1 1 1];
            app.percentRuleDropDown.BackgroundColor = [0.4392 0.451 0.4588];
            app.percentRuleDropDown.Position = [89 41 80 22];
            app.percentRuleDropDown.Value = '1';

            % Create SumLimitsLabel
            app.SumLimitsLabel = uilabel(app.FittingFunctionSettingsPanel);
            app.SumLimitsLabel.HorizontalAlignment = 'center';
            app.SumLimitsLabel.FontName = 'Arial Rounded MT Bold';
            app.SumLimitsLabel.FontSize = 14;
            app.SumLimitsLabel.FontWeight = 'bold';
            app.SumLimitsLabel.FontColor = [1 1 1];
            app.SumLimitsLabel.Position = [144 162 80 22];
            app.SumLimitsLabel.Text = 'Sum Limits';

            % Create SumUpperLimitSpinnerLabel_7
            app.SumUpperLimitSpinnerLabel_7 = uilabel(app.FittingFunctionSettingsPanel);
            app.SumUpperLimitSpinnerLabel_7.HorizontalAlignment = 'right';
            app.SumUpperLimitSpinnerLabel_7.FontName = 'Arial';
            app.SumUpperLimitSpinnerLabel_7.FontSize = 14;
            app.SumUpperLimitSpinnerLabel_7.FontColor = [1 1 1];
            app.SumUpperLimitSpinnerLabel_7.Position = [22 134 110 22];
            app.SumUpperLimitSpinnerLabel_7.Text = 'Sum Upper Limit';

            % Create SumUpperLimitSpinner
            app.SumUpperLimitSpinner = uispinner(app.FittingFunctionSettingsPanel);
            app.SumUpperLimitSpinner.Limits = [1 Inf];
            app.SumUpperLimitSpinner.ValueChangedFcn = createCallbackFcn(app, @SumUpperLimitSpinnerValueChanged, true);
            app.SumUpperLimitSpinner.FontName = 'Arial';
            app.SumUpperLimitSpinner.FontSize = 14;
            app.SumUpperLimitSpinner.FontColor = [1 1 1];
            app.SumUpperLimitSpinner.BackgroundColor = [0.4392 0.451 0.4588];
            app.SumUpperLimitSpinner.Position = [149 134 100 22];
            app.SumUpperLimitSpinner.Value = 5;

            % Create SumLowerLimitSpinnerLabel
            app.SumLowerLimitSpinnerLabel = uilabel(app.FittingFunctionSettingsPanel);
            app.SumLowerLimitSpinnerLabel.HorizontalAlignment = 'right';
            app.SumLowerLimitSpinnerLabel.FontName = 'Arial';
            app.SumLowerLimitSpinnerLabel.FontSize = 14;
            app.SumLowerLimitSpinnerLabel.FontColor = [1 1 1];
            app.SumLowerLimitSpinnerLabel.Position = [22 102 110 22];
            app.SumLowerLimitSpinnerLabel.Text = 'Sum Lower Limit';

            % Create SumLowerLimitSpinner
            app.SumLowerLimitSpinner = uispinner(app.FittingFunctionSettingsPanel);
            app.SumLowerLimitSpinner.Limits = [0 Inf];
            app.SumLowerLimitSpinner.ValueChangedFcn = createCallbackFcn(app, @SumLowerLimitSpinnerValueChanged, true);
            app.SumLowerLimitSpinner.FontName = 'Arial';
            app.SumLowerLimitSpinner.FontSize = 14;
            app.SumLowerLimitSpinner.FontColor = [1 1 1];
            app.SumLowerLimitSpinner.BackgroundColor = [0.4392 0.451 0.4588];
            app.SumLowerLimitSpinner.Position = [149 104 100 22];

            % Create Sum2LowerLimitSpinnerLabel
            app.Sum2LowerLimitSpinnerLabel = uilabel(app.FittingFunctionSettingsPanel);
            app.Sum2LowerLimitSpinnerLabel.HorizontalAlignment = 'right';
            app.Sum2LowerLimitSpinnerLabel.FontName = 'Arial';
            app.Sum2LowerLimitSpinnerLabel.FontSize = 14;
            app.Sum2LowerLimitSpinnerLabel.FontColor = [1 1 1];
            app.Sum2LowerLimitSpinnerLabel.Position = [11 38 121 22];
            app.Sum2LowerLimitSpinnerLabel.Text = 'Sum 2 Lower Limit';

            % Create Sum2LowerLimitSpinner
            app.Sum2LowerLimitSpinner = uispinner(app.FittingFunctionSettingsPanel);
            app.Sum2LowerLimitSpinner.Limits = [0 Inf];
            app.Sum2LowerLimitSpinner.ValueChangedFcn = createCallbackFcn(app, @Sum2LowerLimitSpinnerValueChanged, true);
            app.Sum2LowerLimitSpinner.FontName = 'Arial';
            app.Sum2LowerLimitSpinner.FontSize = 14;
            app.Sum2LowerLimitSpinner.FontColor = [1 1 1];
            app.Sum2LowerLimitSpinner.BackgroundColor = [0.4392 0.451 0.4588];
            app.Sum2LowerLimitSpinner.Position = [149 38 100 22];

            % Create Sum2UpperLimitSpinnerLabel
            app.Sum2UpperLimitSpinnerLabel = uilabel(app.FittingFunctionSettingsPanel);
            app.Sum2UpperLimitSpinnerLabel.HorizontalAlignment = 'right';
            app.Sum2UpperLimitSpinnerLabel.FontName = 'Arial';
            app.Sum2UpperLimitSpinnerLabel.FontSize = 14;
            app.Sum2UpperLimitSpinnerLabel.FontColor = [1 1 1];
            app.Sum2UpperLimitSpinnerLabel.Position = [11 70 121 22];
            app.Sum2UpperLimitSpinnerLabel.Text = 'Sum 2 Upper Limit';

            % Create Sum2UpperLimitSpinner
            app.Sum2UpperLimitSpinner = uispinner(app.FittingFunctionSettingsPanel);
            app.Sum2UpperLimitSpinner.Limits = [1 Inf];
            app.Sum2UpperLimitSpinner.ValueChangedFcn = createCallbackFcn(app, @Sum2UpperLimitSpinnerValueChanged, true);
            app.Sum2UpperLimitSpinner.FontName = 'Arial';
            app.Sum2UpperLimitSpinner.FontSize = 14;
            app.Sum2UpperLimitSpinner.FontColor = [1 1 1];
            app.Sum2UpperLimitSpinner.BackgroundColor = [0.4392 0.451 0.4588];
            app.Sum2UpperLimitSpinner.Position = [149 70 100 22];
            app.Sum2UpperLimitSpinner.Value = 5;

            % Create Sum1LowerHidden
            app.Sum1LowerHidden = uilabel(app.FittingFunctionSettingsPanel);
            app.Sum1LowerHidden.BackgroundColor = [0.4392 0.451 0.4588];
            app.Sum1LowerHidden.HorizontalAlignment = 'right';
            app.Sum1LowerHidden.FontName = 'Arial';
            app.Sum1LowerHidden.FontSize = 13;
            app.Sum1LowerHidden.FontColor = [1 1 1];
            app.Sum1LowerHidden.Visible = 'off';
            app.Sum1LowerHidden.Position = [11 102 121 22];
            app.Sum1LowerHidden.Text = 'Sum 1 Lower Limit';

            % Create Sum1UpperHidden
            app.Sum1UpperHidden = uilabel(app.FittingFunctionSettingsPanel);
            app.Sum1UpperHidden.BackgroundColor = [0.4392 0.451 0.4588];
            app.Sum1UpperHidden.HorizontalAlignment = 'right';
            app.Sum1UpperHidden.FontName = 'Arial';
            app.Sum1UpperHidden.FontSize = 13;
            app.Sum1UpperHidden.FontColor = [1 1 1];
            app.Sum1UpperHidden.Visible = 'off';
            app.Sum1UpperHidden.Position = [11 134 121 22];
            app.Sum1UpperHidden.Text = 'Sum 1 Upper Limit';

            % Create Mode_switch
            app.Mode_switch = uiswitch(app.FittingFunctionSettingsPanel, 'slider');
            app.Mode_switch.Items = {'Single', 'Double'};
            app.Mode_switch.ValueChangedFcn = createCallbackFcn(app, @Mode_switchValueChanged, true);
            app.Mode_switch.FontName = 'Arial';
            app.Mode_switch.FontSize = 14;
            app.Mode_switch.FontColor = [1 1 1];
            app.Mode_switch.Position = [158 410 57 25];
            app.Mode_switch.Value = 'Single';

            % Create SumHiders
            app.SumHiders = uipanel(app.FittingFunctionSettingsPanel);
            app.SumHiders.AutoResizeChildren = 'off';
            app.SumHiders.ForegroundColor = [1 1 1];
            app.SumHiders.BorderType = 'none';
            app.SumHiders.BackgroundColor = [0.4392 0.451 0.4588];
            app.SumHiders.FontName = 'Arial';
            app.SumHiders.Position = [14 30 242 67];

            % Create SumHiderLabel
            app.SumHiderLabel = uilabel(app.SumHiders);
            app.SumHiderLabel.HorizontalAlignment = 'center';
            app.SumHiderLabel.FontName = 'Arial';
            app.SumHiderLabel.FontSize = 14;
            app.SumHiderLabel.FontColor = [1 1 1];
            app.SumHiderLabel.Position = [22 15 201 33];
            app.SumHiderLabel.Text = {'Application is in Single Mode.'; 'Double controls are hidden.'};

            % Create OptimizationTab
            app.OptimizationTab = uitab(app.TabGroup);
            app.OptimizationTab.AutoResizeChildren = 'off';
            app.OptimizationTab.Title = 'Optimization';
            app.OptimizationTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create OptimizationSettingsPanel
            app.OptimizationSettingsPanel = uibuttongroup(app.OptimizationTab);
            app.OptimizationSettingsPanel.AutoResizeChildren = 'off';
            app.OptimizationSettingsPanel.ForegroundColor = [1 1 1];
            app.OptimizationSettingsPanel.BorderType = 'none';
            app.OptimizationSettingsPanel.TitlePosition = 'centertop';
            app.OptimizationSettingsPanel.Title = 'Optimization Settings';
            app.OptimizationSettingsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.OptimizationSettingsPanel.FontName = 'Arial Rounded MT Bold';
            app.OptimizationSettingsPanel.FontWeight = 'bold';
            app.OptimizationSettingsPanel.FontSize = 15;
            app.OptimizationSettingsPanel.Position = [6 7 360 479];

            % Create SpecifymaxvalueofiterationsCheckBox
            app.SpecifymaxvalueofiterationsCheckBox = uicheckbox(app.OptimizationSettingsPanel);
            app.SpecifymaxvalueofiterationsCheckBox.ValueChangedFcn = createCallbackFcn(app, @SpecifymaxvalueofiterationsValueChanged, true);
            app.SpecifymaxvalueofiterationsCheckBox.Text = 'Specify max value of iterations:';
            app.SpecifymaxvalueofiterationsCheckBox.FontName = 'Arial';
            app.SpecifymaxvalueofiterationsCheckBox.FontSize = 14;
            app.SpecifymaxvalueofiterationsCheckBox.FontColor = [1 1 1];
            app.SpecifymaxvalueofiterationsCheckBox.Position = [10 162 226 27];

            % Create MaxIter_EditField
            app.MaxIter_EditField = uieditfield(app.OptimizationSettingsPanel, 'numeric');
            app.MaxIter_EditField.Limits = [0 500];
            app.MaxIter_EditField.ValueChangedFcn = createCallbackFcn(app, @MaxIter_EditFieldValueChanged, true);
            app.MaxIter_EditField.FontName = 'Arial';
            app.MaxIter_EditField.FontSize = 14;
            app.MaxIter_EditField.FontColor = [1 1 1];
            app.MaxIter_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.MaxIter_EditField.Enable = 'off';
            app.MaxIter_EditField.Position = [244 165 100 22];
            app.MaxIter_EditField.Value = 50;

            % Create TolFun_EditField
            app.TolFun_EditField = uieditfield(app.OptimizationSettingsPanel, 'numeric');
            app.TolFun_EditField.Limits = [0 1];
            app.TolFun_EditField.ValueChangedFcn = createCallbackFcn(app, @TolFun_EditFieldValueChanged, true);
            app.TolFun_EditField.FontName = 'Arial';
            app.TolFun_EditField.FontSize = 14;
            app.TolFun_EditField.FontColor = [1 1 1];
            app.TolFun_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.TolFun_EditField.Enable = 'off';
            app.TolFun_EditField.Position = [244 125 100 22];
            app.TolFun_EditField.Value = 1e-06;

            % Create SpecifytermtoleranceFunCheckBox
            app.SpecifytermtoleranceFunCheckBox = uicheckbox(app.OptimizationSettingsPanel);
            app.SpecifytermtoleranceFunCheckBox.ValueChangedFcn = createCallbackFcn(app, @SpecifyterminationtoleranceFunValueChanged, true);
            app.SpecifytermtoleranceFunCheckBox.Text = {'Specify termination tolerance'; 'on model value:'};
            app.SpecifytermtoleranceFunCheckBox.FontName = 'Arial';
            app.SpecifytermtoleranceFunCheckBox.FontSize = 14;
            app.SpecifytermtoleranceFunCheckBox.FontColor = [1 1 1];
            app.SpecifytermtoleranceFunCheckBox.Position = [10 119 226 33];

            % Create TolX_EditField
            app.TolX_EditField = uieditfield(app.OptimizationSettingsPanel, 'numeric');
            app.TolX_EditField.Limits = [0 1];
            app.TolX_EditField.ValueChangedFcn = createCallbackFcn(app, @TolX_EditFieldValueChanged, true);
            app.TolX_EditField.FontName = 'Arial';
            app.TolX_EditField.FontSize = 14;
            app.TolX_EditField.FontColor = [1 1 1];
            app.TolX_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.TolX_EditField.Enable = 'off';
            app.TolX_EditField.Position = [244 84 100 22];
            app.TolX_EditField.Value = 1e-06;

            % Create SpecifytermtoleranceXCheckBox
            app.SpecifytermtoleranceXCheckBox = uicheckbox(app.OptimizationSettingsPanel);
            app.SpecifytermtoleranceXCheckBox.ValueChangedFcn = createCallbackFcn(app, @SpecifyterminationtoleranceXValueChanged, true);
            app.SpecifytermtoleranceXCheckBox.Text = {'Specify termination tolerance'; 'on coefficient values:'};
            app.SpecifytermtoleranceXCheckBox.FontName = 'Arial';
            app.SpecifytermtoleranceXCheckBox.FontSize = 14;
            app.SpecifytermtoleranceXCheckBox.FontColor = [1 1 1];
            app.SpecifytermtoleranceXCheckBox.Position = [10 78 226 33];

            % Create RobustFitOptionsDropDownLabel
            app.RobustFitOptionsDropDownLabel = uilabel(app.OptimizationSettingsPanel);
            app.RobustFitOptionsDropDownLabel.BackgroundColor = [0.4392 0.451 0.4588];
            app.RobustFitOptionsDropDownLabel.FontName = 'Arial';
            app.RobustFitOptionsDropDownLabel.FontSize = 14;
            app.RobustFitOptionsDropDownLabel.FontColor = [1 1 1];
            app.RobustFitOptionsDropDownLabel.Position = [19 238 121 22];
            app.RobustFitOptionsDropDownLabel.Text = 'Robust Fit Options';

            % Create RobustFitOptionsDropDown
            app.RobustFitOptionsDropDown = uidropdown(app.OptimizationSettingsPanel);
            app.RobustFitOptionsDropDown.Items = {'Off', 'Least Absolute Residual', 'Bisquare Weights'};
            app.RobustFitOptionsDropDown.ItemsData = {'off', 'LAR', 'Bisquare'};
            app.RobustFitOptionsDropDown.ValueChangedFcn = createCallbackFcn(app, @RobustFitOptionsDropDownValueChanged, true);
            app.RobustFitOptionsDropDown.FontName = 'Arial';
            app.RobustFitOptionsDropDown.FontSize = 14;
            app.RobustFitOptionsDropDown.FontColor = [1 1 1];
            app.RobustFitOptionsDropDown.BackgroundColor = [0.4392 0.451 0.4588];
            app.RobustFitOptionsDropDown.Position = [156 238 191 22];
            app.RobustFitOptionsDropDown.Value = 'off';

            % Create ShowallGoFStatisticsCheckBox
            app.ShowallGoFStatisticsCheckBox = uicheckbox(app.OptimizationSettingsPanel);
            app.ShowallGoFStatisticsCheckBox.ValueChangedFcn = createCallbackFcn(app, @ShowallGoFStatisticsCheckBoxValueChanged, true);
            app.ShowallGoFStatisticsCheckBox.Text = 'Show all Goodness-of-Fit Statistics';
            app.ShowallGoFStatisticsCheckBox.FontName = 'Arial';
            app.ShowallGoFStatisticsCheckBox.FontSize = 14;
            app.ShowallGoFStatisticsCheckBox.FontColor = [1 1 1];
            app.ShowallGoFStatisticsCheckBox.Position = [10 359 334 22];
            app.ShowallGoFStatisticsCheckBox.Value = true;

            % Create OptimizationMethod_Switch
            app.OptimizationMethod_Switch = uiswitch(app.OptimizationSettingsPanel, 'slider');
            app.OptimizationMethod_Switch.Items = {'Least-Squares', 'Simplex'};
            app.OptimizationMethod_Switch.ItemsData = {'LS', 'Sim'};
            app.OptimizationMethod_Switch.ValueChangedFcn = createCallbackFcn(app, @OptimizationMethod_SwitchValueChanged, true);
            app.OptimizationMethod_Switch.FontName = 'Arial';
            app.OptimizationMethod_Switch.FontSize = 14;
            app.OptimizationMethod_Switch.FontColor = [1 1 1];
            app.OptimizationMethod_Switch.Position = [159 420 57 25];
            app.OptimizationMethod_Switch.Value = 'LS';

            % Create Custombounds_checkBox
            app.Custombounds_checkBox = uicheckbox(app.OptimizationSettingsPanel);
            app.Custombounds_checkBox.ValueChangedFcn = createCallbackFcn(app, @Custombounds_checkBoxValueChanged, true);
            app.Custombounds_checkBox.Text = {'Allow custom parameter bounding during'; 'optimization'};
            app.Custombounds_checkBox.FontName = 'Arial';
            app.Custombounds_checkBox.FontSize = 14;
            app.Custombounds_checkBox.FontColor = [1 1 1];
            app.Custombounds_checkBox.Position = [10 319 334 33];

            % Create EndTriggerLabel
            app.EndTriggerLabel = uilabel(app.OptimizationSettingsPanel);
            app.EndTriggerLabel.HorizontalAlignment = 'center';
            app.EndTriggerLabel.FontName = 'Arial Rounded MT Bold';
            app.EndTriggerLabel.FontSize = 14;
            app.EndTriggerLabel.FontWeight = 'bold';
            app.EndTriggerLabel.FontColor = [1 1 1];
            app.EndTriggerLabel.Position = [144 190 86 22];
            app.EndTriggerLabel.Text = 'End Trigger';

            % Create ResetCustomBoundsButton
            app.ResetCustomBoundsButton = uibutton(app.OptimizationSettingsPanel, 'push');
            app.ResetCustomBoundsButton.ButtonPushedFcn = createCallbackFcn(app, @ResetCustomBoundsButtonPushed, true);
            app.ResetCustomBoundsButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ResetCustomBoundsButton.FontName = 'Arial';
            app.ResetCustomBoundsButton.FontSize = 14;
            app.ResetCustomBoundsButton.FontColor = [1 1 1];
            app.ResetCustomBoundsButton.Enable = 'off';
            app.ResetCustomBoundsButton.Position = [102 284 171 27];
            app.ResetCustomBoundsButton.Text = 'Reset Custom Bounds';

            % Create Savecommandline_checkbox
            app.Savecommandline_checkbox = uicheckbox(app.OptimizationSettingsPanel);
            app.Savecommandline_checkbox.Text = 'Save command window diary to text file';
            app.Savecommandline_checkbox.FontName = 'Arial';
            app.Savecommandline_checkbox.FontSize = 14;
            app.Savecommandline_checkbox.FontColor = [1 1 1];
            app.Savecommandline_checkbox.Position = [10 385 334 22];

            % Create DataWeightingTab
            app.DataWeightingTab = uitab(app.TabGroup);
            app.DataWeightingTab.AutoResizeChildren = 'off';
            app.DataWeightingTab.Title = 'Data Weighting';
            app.DataWeightingTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create OptimizationSettingsPanel_2
            app.OptimizationSettingsPanel_2 = uibuttongroup(app.DataWeightingTab);
            app.OptimizationSettingsPanel_2.AutoResizeChildren = 'off';
            app.OptimizationSettingsPanel_2.ForegroundColor = [1 1 1];
            app.OptimizationSettingsPanel_2.BorderType = 'none';
            app.OptimizationSettingsPanel_2.TitlePosition = 'centertop';
            app.OptimizationSettingsPanel_2.Title = 'Data Weighting Settings';
            app.OptimizationSettingsPanel_2.BackgroundColor = [0.4392 0.451 0.4588];
            app.OptimizationSettingsPanel_2.FontName = 'Arial Rounded MT Bold';
            app.OptimizationSettingsPanel_2.FontWeight = 'bold';
            app.OptimizationSettingsPanel_2.FontSize = 15;
            app.OptimizationSettingsPanel_2.Position = [6 7 360 479];

            % Create Thresholdweight_EditField
            app.Thresholdweight_EditField = uieditfield(app.OptimizationSettingsPanel_2, 'numeric');
            app.Thresholdweight_EditField.Limits = [1 3];
            app.Thresholdweight_EditField.ValueChangedFcn = createCallbackFcn(app, @Weight_EditFieldValueChanged, true);
            app.Thresholdweight_EditField.FontName = 'Arial';
            app.Thresholdweight_EditField.FontSize = 14;
            app.Thresholdweight_EditField.FontColor = [1 1 1];
            app.Thresholdweight_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Thresholdweight_EditField.Position = [204 339 100 22];
            app.Thresholdweight_EditField.Value = 1.2;

            % Create WeightMultiplier13Label_2
            app.WeightMultiplier13Label_2 = uilabel(app.OptimizationSettingsPanel_2);
            app.WeightMultiplier13Label_2.HorizontalAlignment = 'right';
            app.WeightMultiplier13Label_2.FontName = 'Arial';
            app.WeightMultiplier13Label_2.FontSize = 14;
            app.WeightMultiplier13Label_2.FontColor = [1 1 1];
            app.WeightMultiplier13Label_2.Position = [36 339 154 22];
            app.WeightMultiplier13Label_2.Text = 'Weight Multiplier (1-3)';

            % Create Thresholdintensity_EditField
            app.Thresholdintensity_EditField = uieditfield(app.OptimizationSettingsPanel_2, 'numeric');
            app.Thresholdintensity_EditField.Limits = [0 1];
            app.Thresholdintensity_EditField.ValueChangedFcn = createCallbackFcn(app, @Threshold_EditFieldValueChanged, true);
            app.Thresholdintensity_EditField.FontName = 'Arial';
            app.Thresholdintensity_EditField.FontSize = 14;
            app.Thresholdintensity_EditField.FontColor = [1 1 1];
            app.Thresholdintensity_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Thresholdintensity_EditField.Position = [204 372 100 22];
            app.Thresholdintensity_EditField.Value = 0.1;

            % Create ThresholdIntensity01Label_2
            app.ThresholdIntensity01Label_2 = uilabel(app.OptimizationSettingsPanel_2);
            app.ThresholdIntensity01Label_2.HorizontalAlignment = 'right';
            app.ThresholdIntensity01Label_2.FontName = 'Arial';
            app.ThresholdIntensity01Label_2.FontSize = 14;
            app.ThresholdIntensity01Label_2.FontColor = [1 1 1];
            app.ThresholdIntensity01Label_2.Position = [33 372 157 22];
            app.ThresholdIntensity01Label_2.Text = 'Threshold Intensity (0-1)';

            % Create ThresholdweightingCheckBox
            app.ThresholdweightingCheckBox = uicheckbox(app.OptimizationSettingsPanel_2);
            app.ThresholdweightingCheckBox.ValueChangedFcn = createCallbackFcn(app, @WeightdatapointsCheckBoxValueChanged, true);
            app.ThresholdweightingCheckBox.Text = 'Weight data points above threshold intensity';
            app.ThresholdweightingCheckBox.FontName = 'Arial';
            app.ThresholdweightingCheckBox.FontSize = 14;
            app.ThresholdweightingCheckBox.FontColor = [1 1 1];
            app.ThresholdweightingCheckBox.Position = [10 400 342 22];
            app.ThresholdweightingCheckBox.Value = true;

            % Create ThresholdWeightingLabel
            app.ThresholdWeightingLabel = uilabel(app.OptimizationSettingsPanel_2);
            app.ThresholdWeightingLabel.HorizontalAlignment = 'center';
            app.ThresholdWeightingLabel.FontName = 'Arial Rounded MT Bold';
            app.ThresholdWeightingLabel.FontSize = 14;
            app.ThresholdWeightingLabel.FontWeight = 'bold';
            app.ThresholdWeightingLabel.FontColor = [1 1 1];
            app.ThresholdWeightingLabel.Position = [114 425 146 22];
            app.ThresholdWeightingLabel.Text = 'Threshold Weighting';

            % Create Thresholddataweighting_panel
            app.Thresholddataweighting_panel = uipanel(app.OptimizationSettingsPanel_2);
            app.Thresholddataweighting_panel.AutoResizeChildren = 'off';
            app.Thresholddataweighting_panel.BorderType = 'none';
            app.Thresholddataweighting_panel.Visible = 'off';
            app.Thresholddataweighting_panel.BackgroundColor = [0.4392 0.451 0.4588];
            app.Thresholddataweighting_panel.FontName = 'Arial Rounded MT Bold';
            app.Thresholddataweighting_panel.FontSize = 14;
            app.Thresholddataweighting_panel.Position = [7 333 348 89];

            % Create Dataweightingisnotavailable_2
            app.Dataweightingisnotavailable_2 = uilabel(app.Thresholddataweighting_panel);
            app.Dataweightingisnotavailable_2.HorizontalAlignment = 'center';
            app.Dataweightingisnotavailable_2.FontName = 'Arial';
            app.Dataweightingisnotavailable_2.FontSize = 14;
            app.Dataweightingisnotavailable_2.FontColor = [1 1 1];
            app.Dataweightingisnotavailable_2.Position = [48 31 278 33];
            app.Dataweightingisnotavailable_2.Text = {'Data point weighting is not available with'; 'derivative-free optimization.'};

            % Create ExtremaWeight_EditField
            app.ExtremaWeight_EditField = uieditfield(app.OptimizationSettingsPanel_2, 'numeric');
            app.ExtremaWeight_EditField.Limits = [1 20];
            app.ExtremaWeight_EditField.FontName = 'Arial';
            app.ExtremaWeight_EditField.FontSize = 14;
            app.ExtremaWeight_EditField.FontColor = [1 1 1];
            app.ExtremaWeight_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.ExtremaWeight_EditField.Position = [207 146 100 22];
            app.ExtremaWeight_EditField.Value = 5;

            % Create WeightMultiplier120Label
            app.WeightMultiplier120Label = uilabel(app.OptimizationSettingsPanel_2);
            app.WeightMultiplier120Label.HorizontalAlignment = 'right';
            app.WeightMultiplier120Label.FontName = 'Arial';
            app.WeightMultiplier120Label.FontSize = 14;
            app.WeightMultiplier120Label.FontColor = [1 1 1];
            app.WeightMultiplier120Label.Position = [43 146 150 22];
            app.WeightMultiplier120Label.Text = 'Weight Multiplier (1-20)';

            % Create WeightextremaCheckBox
            app.WeightextremaCheckBox = uicheckbox(app.OptimizationSettingsPanel_2);
            app.WeightextremaCheckBox.ValueChangedFcn = createCallbackFcn(app, @WeightextremaCheckBoxValueChanged, true);
            app.WeightextremaCheckBox.Text = {'Weight data points at local extrema (peaks'; 'and valleys)'};
            app.WeightextremaCheckBox.FontName = 'Arial';
            app.WeightextremaCheckBox.FontSize = 14;
            app.WeightextremaCheckBox.FontColor = [1 1 1];
            app.WeightextremaCheckBox.Position = [13 251 342 33];
            app.WeightextremaCheckBox.Value = true;

            % Create ExtremaWeightingLabel
            app.ExtremaWeightingLabel = uilabel(app.OptimizationSettingsPanel_2);
            app.ExtremaWeightingLabel.HorizontalAlignment = 'center';
            app.ExtremaWeightingLabel.FontName = 'Arial Rounded MT Bold';
            app.ExtremaWeightingLabel.FontSize = 14;
            app.ExtremaWeightingLabel.FontWeight = 'bold';
            app.ExtremaWeightingLabel.FontColor = [1 1 1];
            app.ExtremaWeightingLabel.Position = [123.5 287 134 22];
            app.ExtremaWeightingLabel.Text = 'Extrema Weighting';

            % Create Numberofpoints_EditField
            app.Numberofpoints_EditField = uieditfield(app.OptimizationSettingsPanel_2, 'numeric');
            app.Numberofpoints_EditField.Limits = [0 15];
            app.Numberofpoints_EditField.RoundFractionalValues = 'on';
            app.Numberofpoints_EditField.ValueDisplayFormat = '%.0f';
            app.Numberofpoints_EditField.FontName = 'Arial';
            app.Numberofpoints_EditField.FontSize = 14;
            app.Numberofpoints_EditField.FontColor = [1 1 1];
            app.Numberofpoints_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Numberofpoints_EditField.Position = [207 183 100 22];
            app.Numberofpoints_EditField.Value = 5;

            % Create Numberofweightedpointssurroundingextrema115Label
            app.Numberofweightedpointssurroundingextrema115Label = uilabel(app.OptimizationSettingsPanel_2);
            app.Numberofweightedpointssurroundingextrema115Label.HorizontalAlignment = 'right';
            app.Numberofweightedpointssurroundingextrema115Label.FontName = 'Arial';
            app.Numberofweightedpointssurroundingextrema115Label.FontSize = 14;
            app.Numberofweightedpointssurroundingextrema115Label.FontColor = [1 1 1];
            app.Numberofweightedpointssurroundingextrema115Label.Position = [18 178 175 33];
            app.Numberofweightedpointssurroundingextrema115Label.Text = {'Number of weighted points'; 'surrounding extrema (1-15)'};

            % Create Fillsalientpoints_checkBox
            app.Fillsalientpoints_checkBox = uicheckbox(app.OptimizationSettingsPanel_2);
            app.Fillsalientpoints_checkBox.ValueChangedFcn = createCallbackFcn(app, @Fillsalientpoints_checkBoxValueChanged, true);
            app.Fillsalientpoints_checkBox.Text = 'Fill salient data points';
            app.Fillsalientpoints_checkBox.FontName = 'Arial';
            app.Fillsalientpoints_checkBox.FontSize = 14;
            app.Fillsalientpoints_checkBox.FontColor = [1 1 1];
            app.Fillsalientpoints_checkBox.Position = [13 220 342 25];

            % Create Extremadataweighting_panel
            app.Extremadataweighting_panel = uipanel(app.OptimizationSettingsPanel_2);
            app.Extremadataweighting_panel.AutoResizeChildren = 'off';
            app.Extremadataweighting_panel.BorderType = 'none';
            app.Extremadataweighting_panel.Visible = 'off';
            app.Extremadataweighting_panel.BackgroundColor = [0.4392 0.451 0.4588];
            app.Extremadataweighting_panel.FontName = 'Arial Rounded MT Bold';
            app.Extremadataweighting_panel.FontSize = 14;
            app.Extremadataweighting_panel.Position = [7 144 348 140];

            % Create Dataweightingisnotavailable_3
            app.Dataweightingisnotavailable_3 = uilabel(app.Extremadataweighting_panel);
            app.Dataweightingisnotavailable_3.HorizontalAlignment = 'center';
            app.Dataweightingisnotavailable_3.FontName = 'Arial';
            app.Dataweightingisnotavailable_3.FontSize = 14;
            app.Dataweightingisnotavailable_3.FontColor = [1 1 1];
            app.Dataweightingisnotavailable_3.Position = [47 60 278 33];
            app.Dataweightingisnotavailable_3.Text = {'Data point weighting is not available with'; 'derivative-free optimization.'};

            % Create CalculationsTab
            app.CalculationsTab = uitab(app.TabGroup);
            app.CalculationsTab.AutoResizeChildren = 'off';
            app.CalculationsTab.Title = 'Calculations';
            app.CalculationsTab.BackgroundColor = [0.4392 0.451 0.4588];

            % Create CalculationsSettingsButtonGroup
            app.CalculationsSettingsButtonGroup = uibuttongroup(app.CalculationsTab);
            app.CalculationsSettingsButtonGroup.AutoResizeChildren = 'off';
            app.CalculationsSettingsButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @CalculationsSettingsSelectionChanged, true);
            app.CalculationsSettingsButtonGroup.ForegroundColor = [1 1 1];
            app.CalculationsSettingsButtonGroup.BorderType = 'none';
            app.CalculationsSettingsButtonGroup.TitlePosition = 'centertop';
            app.CalculationsSettingsButtonGroup.Title = 'Calculations Settings';
            app.CalculationsSettingsButtonGroup.BackgroundColor = [0.4392 0.451 0.4588];
            app.CalculationsSettingsButtonGroup.FontName = 'Arial Rounded MT Bold';
            app.CalculationsSettingsButtonGroup.FontWeight = 'bold';
            app.CalculationsSettingsButtonGroup.FontSize = 15;
            app.CalculationsSettingsButtonGroup.Position = [9 11 355 468];

            % Create KButton_298
            app.KButton_298 = uiradiobutton(app.CalculationsSettingsButtonGroup);
            app.KButton_298.Text = '298 K';
            app.KButton_298.FontName = 'Arial';
            app.KButton_298.FontSize = 14;
            app.KButton_298.FontColor = [1 1 1];
            app.KButton_298.Position = [16 319 62 22];
            app.KButton_298.Value = true;

            % Create KButton_77
            app.KButton_77 = uiradiobutton(app.CalculationsSettingsButtonGroup);
            app.KButton_77.Text = '77 K';
            app.KButton_77.FontName = 'Arial';
            app.KButton_77.FontSize = 14;
            app.KButton_77.FontColor = [1 1 1];
            app.KButton_77.Position = [16 297 171 22];

            % Create KButton_Other
            app.KButton_Other = uiradiobutton(app.CalculationsSettingsButtonGroup);
            app.KButton_Other.Text = 'Other (K):';
            app.KButton_Other.FontName = 'Arial';
            app.KButton_Other.FontSize = 14;
            app.KButton_Other.FontColor = [1 1 1];
            app.KButton_Other.Position = [16 276 90 22];

            % Create AutomaticallycalculateGs
            app.AutomaticallycalculateGs = uicheckbox(app.CalculationsSettingsButtonGroup);
            app.AutomaticallycalculateGs.ValueChangedFcn = createCallbackFcn(app, @AutomaticallycalculateGValueChanged, true);
            app.AutomaticallycalculateGs.Text = 'Automatically calculate ÿGÿs when plotting fit';
            app.AutomaticallycalculateGs.FontName = 'Arial';
            app.AutomaticallycalculateGs.FontSize = 14;
            app.AutomaticallycalculateGs.FontColor = [1 1 1];
            app.AutomaticallycalculateGs.Position = [10 393 345 25];

            % Create Temp_EditField
            app.Temp_EditField = uieditfield(app.CalculationsSettingsButtonGroup, 'numeric');
            app.Temp_EditField.Limits = [1 1000];
            app.Temp_EditField.ValueChangedFcn = createCallbackFcn(app, @Temp_EditFieldValueChanged, true);
            app.Temp_EditField.FontSize = 14;
            app.Temp_EditField.FontColor = [1 1 1];
            app.Temp_EditField.BackgroundColor = [0.4392 0.451 0.4588];
            app.Temp_EditField.Enable = 'off';
            app.Temp_EditField.Position = [107 276 100 22];
            app.Temp_EditField.Value = 273;

            % Create IncludeGsandCIEondataexport
            app.IncludeGsandCIEondataexport = uicheckbox(app.CalculationsSettingsButtonGroup);
            app.IncludeGsandCIEondataexport.ValueChangedFcn = createCallbackFcn(app, @IncludeGsandCIEValueChanged, true);
            app.IncludeGsandCIEondataexport.Text = 'Include ÿGÿs on Parameter Values export';
            app.IncludeGsandCIEondataexport.FontName = 'Arial';
            app.IncludeGsandCIEondataexport.FontSize = 14;
            app.IncludeGsandCIEondataexport.FontColor = [1 1 1];
            app.IncludeGsandCIEondataexport.Position = [10 368 345 25];
            app.IncludeGsandCIEondataexport.Value = true;

            % Create AutomaticallycalculateCIE
            app.AutomaticallycalculateCIE = uicheckbox(app.CalculationsSettingsButtonGroup);
            app.AutomaticallycalculateCIE.ValueChangedFcn = createCallbackFcn(app, @AutomaticallycalculateCIEValueChanged, true);
            app.AutomaticallycalculateCIE.Text = {'Automatically calculate chromaticity coordinate'; 'when loading new spectral data'};
            app.AutomaticallycalculateCIE.FontName = 'Arial';
            app.AutomaticallycalculateCIE.FontSize = 14;
            app.AutomaticallycalculateCIE.FontColor = [1 1 1];
            app.AutomaticallycalculateCIE.Position = [10 151 345 33];

            % Create GsUnitsDropDownLabel
            app.GsUnitsDropDownLabel = uilabel(app.CalculationsSettingsButtonGroup);
            app.GsUnitsDropDownLabel.BackgroundColor = [0.4392 0.451 0.4588];
            app.GsUnitsDropDownLabel.FontName = 'Arial';
            app.GsUnitsDropDownLabel.FontSize = 14;
            app.GsUnitsDropDownLabel.FontColor = [1 1 1];
            app.GsUnitsDropDownLabel.Position = [28 241 75 22];
            app.GsUnitsDropDownLabel.Text = 'ÿGÿs Units';

            % Create GesUnitsDropDown
            app.GesUnitsDropDown = uidropdown(app.CalculationsSettingsButtonGroup);
            app.GesUnitsDropDown.Items = {'Electronvolt (eV)', 'Joule (J)', 'Inverse centimeter (cmÿ¹)'};
            app.GesUnitsDropDown.ItemsData = {'eV', 'J', 'cm-1', ''};
            app.GesUnitsDropDown.ValueChangedFcn = createCallbackFcn(app, @GesUnitsDropDownValueChanged, true);
            app.GesUnitsDropDown.FontName = 'Arial';
            app.GesUnitsDropDown.FontSize = 14;
            app.GesUnitsDropDown.FontColor = [1 1 1];
            app.GesUnitsDropDown.BackgroundColor = [0.4392 0.451 0.4588];
            app.GesUnitsDropDown.Position = [125 241 202 22];
            app.GesUnitsDropDown.Value = 'cm-1';

            % Create multiCIECheckBox
            app.multiCIECheckBox = uicheckbox(app.CalculationsSettingsButtonGroup);
            app.multiCIECheckBox.ValueChangedFcn = createCallbackFcn(app, @multiCIECheckBoxValueChanged, true);
            app.multiCIECheckBox.Text = {'Select multiple spectra for chromaticity'; 'coordinate calculations'};
            app.multiCIECheckBox.FontName = 'Arial';
            app.multiCIECheckBox.FontSize = 14;
            app.multiCIECheckBox.FontColor = [1 1 1];
            app.multiCIECheckBox.Position = [10 114 345 33];
            app.multiCIECheckBox.Value = true;

            % Create Enablecolor_checkBox
            app.Enablecolor_checkBox = uicheckbox(app.CalculationsSettingsButtonGroup);
            app.Enablecolor_checkBox.ValueChangedFcn = createCallbackFcn(app, @Enablecolor_checkBoxValueChanged, true);
            app.Enablecolor_checkBox.Text = 'Enable color prediction';
            app.Enablecolor_checkBox.FontName = 'Arial';
            app.Enablecolor_checkBox.FontSize = 14;
            app.Enablecolor_checkBox.FontColor = [1 1 1];
            app.Enablecolor_checkBox.Position = [10 86 345 25];
            app.Enablecolor_checkBox.Value = true;

            % Create ColorAnalysisLabel
            app.ColorAnalysisLabel = uilabel(app.CalculationsSettingsButtonGroup);
            app.ColorAnalysisLabel.HorizontalAlignment = 'center';
            app.ColorAnalysisLabel.FontName = 'Arial Rounded MT Bold';
            app.ColorAnalysisLabel.FontSize = 14;
            app.ColorAnalysisLabel.FontWeight = 'bold';
            app.ColorAnalysisLabel.FontColor = [1 1 1];
            app.ColorAnalysisLabel.Position = [92 189 187 22];
            app.ColorAnalysisLabel.Text = 'Color Analysis';

            % Create WhitePointIlluminantLabel
            app.WhitePointIlluminantLabel = uilabel(app.CalculationsSettingsButtonGroup);
            app.WhitePointIlluminantLabel.BackgroundColor = [0.4392 0.451 0.4588];
            app.WhitePointIlluminantLabel.HorizontalAlignment = 'right';
            app.WhitePointIlluminantLabel.FontName = 'Arial';
            app.WhitePointIlluminantLabel.FontSize = 14;
            app.WhitePointIlluminantLabel.FontColor = [1 1 1];
            app.WhitePointIlluminantLabel.Position = [23 37 81 33];
            app.WhitePointIlluminantLabel.Text = {'White Point/'; 'Illuminant'};

            % Create WhitePoint_DropDown
            app.WhitePoint_DropDown = uidropdown(app.CalculationsSettingsButtonGroup);
            app.WhitePoint_DropDown.Items = {'CIE standard illuminant A', 'CIE standard illuminant C', 'CIE standard illuminant D50', 'CIE standard illuminant D55', 'CIE standard illuminant D65', 'Equal-energy radiator', 'ICC'};
            app.WhitePoint_DropDown.ItemsData = {'a', 'c', 'd50', 'd55', 'd65', 'e', 'icc'};
            app.WhitePoint_DropDown.ValueChangedFcn = createCallbackFcn(app, @WhitePoint_DropDownValueChanged, true);
            app.WhitePoint_DropDown.FontName = 'Arial';
            app.WhitePoint_DropDown.FontSize = 14;
            app.WhitePoint_DropDown.FontColor = [1 1 1];
            app.WhitePoint_DropDown.BackgroundColor = [0.4392 0.451 0.4588];
            app.WhitePoint_DropDown.Position = [120 43 225 22];
            app.WhitePoint_DropDown.Value = 'd65';

            % Create Experimental_temp_label
            app.Experimental_temp_label = uilabel(app.CalculationsSettingsButtonGroup);
            app.Experimental_temp_label.FontName = 'Arial';
            app.Experimental_temp_label.FontSize = 14;
            app.Experimental_temp_label.FontColor = [1 1 1];
            app.Experimental_temp_label.Position = [8 341 169 22];
            app.Experimental_temp_label.Text = 'Experimental Temperature';

            % Create FreeEnergyoftheExcitedStateLabel
            app.FreeEnergyoftheExcitedStateLabel = uilabel(app.CalculationsSettingsButtonGroup);
            app.FreeEnergyoftheExcitedStateLabel.HorizontalAlignment = 'center';
            app.FreeEnergyoftheExcitedStateLabel.FontName = 'Arial Rounded MT Bold';
            app.FreeEnergyoftheExcitedStateLabel.FontSize = 14;
            app.FreeEnergyoftheExcitedStateLabel.FontWeight = 'bold';
            app.FreeEnergyoftheExcitedStateLabel.FontColor = [1 1 1];
            app.FreeEnergyoftheExcitedStateLabel.Position = [66 420 226 22];
            app.FreeEnergyoftheExcitedStateLabel.Text = 'Free Energy of the Excited State';

            % Create GoFLabel
            app.GoFLabel = uilabel(app.Franck_Condon_Lineshape_Analyser);
            app.GoFLabel.VerticalAlignment = 'top';
            app.GoFLabel.FontName = 'Arial';
            app.GoFLabel.FontSize = 14;
            app.GoFLabel.FontColor = [0.651 0.651 0.651];
            app.GoFLabel.Visible = 'off';
            app.GoFLabel.Position = [105 694 151 65];
            app.GoFLabel.Text = {'adj. R² = '; 'SSE ='; 'DFE = '; 'RMSE = '};

            % Create Whatsthis_GoFButton
            app.Whatsthis_GoFButton = uibutton(app.Franck_Condon_Lineshape_Analyser, 'state');
            app.Whatsthis_GoFButton.ValueChangedFcn = createCallbackFcn(app, @Whatsthis_GoFButtonValueChanged, true);
            app.Whatsthis_GoFButton.Visible = 'off';
            app.Whatsthis_GoFButton.Icon = 'Question Mark Icon (New).png';
            app.Whatsthis_GoFButton.Text = '';
            app.Whatsthis_GoFButton.BackgroundColor = [0.2196 0.2196 0.2196];
            app.Whatsthis_GoFButton.FontName = 'Arial';
            app.Whatsthis_GoFButton.FontColor = [0.651 0.651 0.651];
            app.Whatsthis_GoFButton.Position = [60 745 26 26];

            % Create GoFStatisticsPanel
            app.GoFStatisticsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.GoFStatisticsPanel.AutoResizeChildren = 'off';
            app.GoFStatisticsPanel.ForegroundColor = [1 1 1];
            app.GoFStatisticsPanel.TitlePosition = 'centertop';
            app.GoFStatisticsPanel.Title = 'GoF Statistics';
            app.GoFStatisticsPanel.Visible = 'off';
            app.GoFStatisticsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.GoFStatisticsPanel.FontName = 'Arial Rounded MT Bold';
            app.GoFStatisticsPanel.FontWeight = 'bold';
            app.GoFStatisticsPanel.FontSize = 16;
            app.GoFStatisticsPanel.Position = [102 645 293 129];

            % Create GoFStatisticsLabel
            app.GoFStatisticsLabel = uilabel(app.GoFStatisticsPanel);
            app.GoFStatisticsLabel.FontName = 'Arial';
            app.GoFStatisticsLabel.FontSize = 14;
            app.GoFStatisticsLabel.FontColor = [1 1 1];
            app.GoFStatisticsLabel.Position = [7 4 263 98];
            app.GoFStatisticsLabel.Text = {'       R² = Coefficient of determination'; 'adj. R² = Degree-of-freedom adjusted '; '               coefficient of determination'; '    SSE = Sum of squares due to error'; '    DFE = Degrees of freedom in the error'; ' RMSE = Root mean squared error'};

            % Create CIESelectPanel
            app.CIESelectPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.CIESelectPanel.AutoResizeChildren = 'off';
            app.CIESelectPanel.ForegroundColor = [1 1 1];
            app.CIESelectPanel.TitlePosition = 'centertop';
            app.CIESelectPanel.Title = 'Select Spectra';
            app.CIESelectPanel.Visible = 'off';
            app.CIESelectPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.CIESelectPanel.FontName = 'Arial Rounded MT Bold';
            app.CIESelectPanel.FontWeight = 'bold';
            app.CIESelectPanel.FontSize = 16;
            app.CIESelectPanel.Position = [721 474 345 269];

            % Create CIESlectedLabel
            app.CIESlectedLabel = uilabel(app.CIESelectPanel);
            app.CIESlectedLabel.FontName = 'Arial';
            app.CIESlectedLabel.FontSize = 14;
            app.CIESlectedLabel.FontColor = [1 1 1];
            app.CIESlectedLabel.Position = [19 190 291 42];
            app.CIESlectedLabel.Text = {'Select the spectra for which you would like'; 'chromaticity coordinates:'};

            % Create DisplayDiagram_StateButton
            app.DisplayDiagram_StateButton = uibutton(app.CIESelectPanel, 'state');
            app.DisplayDiagram_StateButton.ValueChangedFcn = createCallbackFcn(app, @DisplayDiagram_StateButtonValueChanged, true);
            app.DisplayDiagram_StateButton.IconAlignment = 'top';
            app.DisplayDiagram_StateButton.Text = 'Display Diagram';
            app.DisplayDiagram_StateButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.DisplayDiagram_StateButton.FontName = 'Arial Hebrew Scholar';
            app.DisplayDiagram_StateButton.FontSize = 14;
            app.DisplayDiagram_StateButton.FontColor = [1 1 1];
            app.DisplayDiagram_StateButton.Position = [183 17 126 40];

            % Create ExportValuesButton
            app.ExportValuesButton = uibutton(app.CIESelectPanel, 'push');
            app.ExportValuesButton.ButtonPushedFcn = createCallbackFcn(app, @ExportValuesButtonPushed, true);
            app.ExportValuesButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ExportValuesButton.FontName = 'Arial Hebrew Scholar';
            app.ExportValuesButton.FontSize = 14;
            app.ExportValuesButton.FontColor = [1 1 1];
            app.ExportValuesButton.Position = [36 17 126 40];
            app.ExportValuesButton.Text = 'Export Values';

            % Create SelectSpectra_ScrollablePanel
            app.SelectSpectra_ScrollablePanel = uipanel(app.CIESelectPanel);
            app.SelectSpectra_ScrollablePanel.AutoResizeChildren = 'off';
            app.SelectSpectra_ScrollablePanel.BorderType = 'none';
            app.SelectSpectra_ScrollablePanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.SelectSpectra_ScrollablePanel.Scrollable = 'on';
            app.SelectSpectra_ScrollablePanel.Position = [3 66 339 125];

            % Create E0CustomBoundsPanel
            app.E0CustomBoundsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.E0CustomBoundsPanel.AutoResizeChildren = 'off';
            app.E0CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.E0CustomBoundsPanel.TitlePosition = 'centertop';
            app.E0CustomBoundsPanel.Title = 'Eÿ Custom Bounds';
            app.E0CustomBoundsPanel.Visible = 'off';
            app.E0CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.E0CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.E0CustomBoundsPanel.FontWeight = 'bold';
            app.E0CustomBoundsPanel.FontSize = 16;
            app.E0CustomBoundsPanel.Position = [61 317 297 126];

            % Create E0_upperbound_editBox
            app.E0_upperbound_editBox = uieditfield(app.E0CustomBoundsPanel, 'numeric');
            app.E0_upperbound_editBox.Limits = [0 40000];
            app.E0_upperbound_editBox.ValueDisplayFormat = '%.0f';
            app.E0_upperbound_editBox.FontName = 'Arial';
            app.E0_upperbound_editBox.FontSize = 14;
            app.E0_upperbound_editBox.FontColor = [1 1 1];
            app.E0_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.E0_upperbound_editBox.Position = [147 45 100 22];
            app.E0_upperbound_editBox.Value = 40000;

            % Create UpperboundLabel
            app.UpperboundLabel = uilabel(app.E0CustomBoundsPanel);
            app.UpperboundLabel.HorizontalAlignment = 'right';
            app.UpperboundLabel.FontName = 'Arial';
            app.UpperboundLabel.FontSize = 14;
            app.UpperboundLabel.FontColor = [1 1 1];
            app.UpperboundLabel.Position = [47 45 86 22];
            app.UpperboundLabel.Text = 'Upper bound';

            % Create E0_lowerbound_editBox
            app.E0_lowerbound_editBox = uieditfield(app.E0CustomBoundsPanel, 'numeric');
            app.E0_lowerbound_editBox.Limits = [0 40000];
            app.E0_lowerbound_editBox.ValueDisplayFormat = '%.0f';
            app.E0_lowerbound_editBox.FontName = 'Arial';
            app.E0_lowerbound_editBox.FontSize = 14;
            app.E0_lowerbound_editBox.FontColor = [1 1 1];
            app.E0_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.E0_lowerbound_editBox.Position = [147 9 100 22];

            % Create LowerboundLabel
            app.LowerboundLabel = uilabel(app.E0CustomBoundsPanel);
            app.LowerboundLabel.HorizontalAlignment = 'right';
            app.LowerboundLabel.FontName = 'Arial';
            app.LowerboundLabel.FontSize = 14;
            app.LowerboundLabel.FontColor = [1 1 1];
            app.LowerboundLabel.Position = [47 9 86 22];
            app.LowerboundLabel.Text = 'Lower bound';

            % Create Bothvaluesmustbewithin040000cmLabel
            app.Bothvaluesmustbewithin040000cmLabel = uilabel(app.E0CustomBoundsPanel);
            app.Bothvaluesmustbewithin040000cmLabel.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin040000cmLabel.FontName = 'Arial';
            app.Bothvaluesmustbewithin040000cmLabel.FontSize = 14;
            app.Bothvaluesmustbewithin040000cmLabel.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin040000cmLabel.Position = [16.5 74 265 22];
            app.Bothvaluesmustbewithin040000cmLabel.Text = 'Both values must be within 0-40000 cmÿ¹.';

            % Create v05CustomBoundsPanel
            app.v05CustomBoundsPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.v05CustomBoundsPanel.AutoResizeChildren = 'off';
            app.v05CustomBoundsPanel.ForegroundColor = [1 1 1];
            app.v05CustomBoundsPanel.TitlePosition = 'centertop';
            app.v05CustomBoundsPanel.Title = 'ÿÿÿ½ Custom Bounds';
            app.v05CustomBoundsPanel.Visible = 'off';
            app.v05CustomBoundsPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.v05CustomBoundsPanel.FontName = 'Arial Rounded MT Bold';
            app.v05CustomBoundsPanel.FontWeight = 'bold';
            app.v05CustomBoundsPanel.FontSize = 16;
            app.v05CustomBoundsPanel.Position = [383 317 297 126];

            % Create v05_upperbound_editBox
            app.v05_upperbound_editBox = uieditfield(app.v05CustomBoundsPanel, 'numeric');
            app.v05_upperbound_editBox.Limits = [0 5000];
            app.v05_upperbound_editBox.ValueDisplayFormat = '%.0f';
            app.v05_upperbound_editBox.FontName = 'Arial';
            app.v05_upperbound_editBox.FontSize = 14;
            app.v05_upperbound_editBox.FontColor = [1 1 1];
            app.v05_upperbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.v05_upperbound_editBox.Position = [147 40 100 22];
            app.v05_upperbound_editBox.Value = 5000;

            % Create UpperboundLabel_2
            app.UpperboundLabel_2 = uilabel(app.v05CustomBoundsPanel);
            app.UpperboundLabel_2.HorizontalAlignment = 'right';
            app.UpperboundLabel_2.FontName = 'Arial';
            app.UpperboundLabel_2.FontSize = 14;
            app.UpperboundLabel_2.FontColor = [1 1 1];
            app.UpperboundLabel_2.Position = [47 40 86 22];
            app.UpperboundLabel_2.Text = 'Upper bound';

            % Create v05_lowerbound_editBox
            app.v05_lowerbound_editBox = uieditfield(app.v05CustomBoundsPanel, 'numeric');
            app.v05_lowerbound_editBox.Limits = [0 5000];
            app.v05_lowerbound_editBox.ValueDisplayFormat = '%.0f';
            app.v05_lowerbound_editBox.FontName = 'Arial';
            app.v05_lowerbound_editBox.FontSize = 14;
            app.v05_lowerbound_editBox.FontColor = [1 1 1];
            app.v05_lowerbound_editBox.BackgroundColor = [0.4392 0.451 0.4588];
            app.v05_lowerbound_editBox.Position = [147 4 100 22];

            % Create LowerboundLabel_2
            app.LowerboundLabel_2 = uilabel(app.v05CustomBoundsPanel);
            app.LowerboundLabel_2.HorizontalAlignment = 'right';
            app.LowerboundLabel_2.FontName = 'Arial';
            app.LowerboundLabel_2.FontSize = 14;
            app.LowerboundLabel_2.FontColor = [1 1 1];
            app.LowerboundLabel_2.Position = [47 4 86 22];
            app.LowerboundLabel_2.Text = 'Lower bound';

            % Create Bothvaluesmustbewithin05000cmLabel
            app.Bothvaluesmustbewithin05000cmLabel = uilabel(app.v05CustomBoundsPanel);
            app.Bothvaluesmustbewithin05000cmLabel.HorizontalAlignment = 'center';
            app.Bothvaluesmustbewithin05000cmLabel.FontName = 'Arial';
            app.Bothvaluesmustbewithin05000cmLabel.FontSize = 14;
            app.Bothvaluesmustbewithin05000cmLabel.FontColor = [1 1 1];
            app.Bothvaluesmustbewithin05000cmLabel.Position = [7 69 284 22];
            app.Bothvaluesmustbewithin05000cmLabel.Text = 'Both values must be within 0-5000 cmÿ¹.';

            % Create PointSelectedPanel
            app.PointSelectedPanel = uipanel(app.Franck_Condon_Lineshape_Analyser);
            app.PointSelectedPanel.AutoResizeChildren = 'off';
            app.PointSelectedPanel.ForegroundColor = [1 1 1];
            app.PointSelectedPanel.TitlePosition = 'centertop';
            app.PointSelectedPanel.Title = 'Point Selected';
            app.PointSelectedPanel.Visible = 'off';
            app.PointSelectedPanel.BackgroundColor = [0.4392 0.451 0.4588];
            app.PointSelectedPanel.FontName = 'Arial Rounded MT Bold';
            app.PointSelectedPanel.FontWeight = 'bold';
            app.PointSelectedPanel.FontSize = 16;
            app.PointSelectedPanel.Position = [333 232 406 173];

            % Create PointSelectedDialogue
            app.PointSelectedDialogue = uilabel(app.PointSelectedPanel);
            app.PointSelectedDialogue.FontName = 'Arial';
            app.PointSelectedDialogue.FontSize = 14;
            app.PointSelectedDialogue.FontColor = [1 1 1];
            app.PointSelectedDialogue.Position = [19 79 369 65];
            app.PointSelectedDialogue.Text = {'You have selected the point: ____.'; 'Would you like to continue with this point or reselect?'};

            % Create ReselectButton
            app.ReselectButton = uibutton(app.PointSelectedPanel, 'push');
            app.ReselectButton.ButtonPushedFcn = createCallbackFcn(app, @ReselectButtonPushed, true);
            app.ReselectButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ReselectButton.FontName = 'Arial Hebrew Scholar';
            app.ReselectButton.FontSize = 14.5;
            app.ReselectButton.FontColor = [1 1 1];
            app.ReselectButton.Position = [81 17 110 62];
            app.ReselectButton.Text = 'Reselect';

            % Create ContinueButton
            app.ContinueButton = uibutton(app.PointSelectedPanel, 'push');
            app.ContinueButton.ButtonPushedFcn = createCallbackFcn(app, @ContinueButtonPushed, true);
            app.ContinueButton.BackgroundColor = [0.4392 0.451 0.4588];
            app.ContinueButton.FontName = 'Arial Hebrew Scholar';
            app.ContinueButton.FontSize = 14.5;
            app.ContinueButton.FontColor = [1 1 1];
            app.ContinueButton.Position = [213 18 110 61];
            app.ContinueButton.Text = 'Continue';

            % Show the figure after all components are created
            app.Franck_Condon_Lineshape_Analyser.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ARLSpectralFittingGUI_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.Franck_Condon_Lineshape_Analyser)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.Franck_Condon_Lineshape_Analyser)
        end
    end
end