\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}

\usepackage{flowfram} 
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage{tikz}
\usepackage{enumitem}
\usepackage{graphicx}
\usepackage[top=1cm,left=1cm,right=1cm,bottom=1cm]{geometry}
\usepackage{hyperref}

\setlength{\parindent}{0pt} 
\pagestyle{empty}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\definecolor{white}{RGB}{255,255,255}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{sidecolor}{HTML}{E7E7E7}
\definecolor{mainblue}{HTML}{0E5484}
\definecolor{maingray}{HTML}{B9B9B9}

\newcommand{\Sep}{\vspace{1em}}
\newcommand{\SmallSep}{\vspace{0.5em}} 

\newlength{\TotalSectionLength} % Define a new length to hold the remaining line width after the section title is printed
\newlength{\SectionTitleLength} % Define a new length to hold the width of the section title
\newcommand{\profilesection}[1]{
	\setlength\TotalSectionLength{\linewidth}% Set the total line width
	\settowidth{\SectionTitleLength}{\huge #1 }% Calculate the width of the section title
	\addtolength\TotalSectionLength{-\SectionTitleLength}% Subtract the section title width from the total width
	\addtolength\TotalSectionLength{-2.22221pt}% Modifier to remove overfull box warning
	\vspace{8pt}% Whitespace before the section title
	{\color{black!80} \large #1 }% Print the title and auto-width rule
}

\setlist{noitemsep,nolistsep} % Remove spacing within and around lists

\setlength{\columnsep}{\baselineskip} % Set the spacing between columns

% Define the left frame (sidebar)
\newflowframe{0.35\textwidth}{\textheight}{0pt}{0pt}[left]
\newlength{\LeftMainSep}
\setlength{\LeftMainSep}{0.35\textwidth}
\addtolength{\LeftMainSep}{1\columnsep}
 
% Small static frame for the vertical line
\newstaticframe{1.5pt}{\textheight}{\LeftMainSep}{0pt}
 
% Define the right frame (main body)
\addtolength{\LeftMainSep}{1.5pt}
\addtolength{\LeftMainSep}{1\columnsep}
\newflowframe{0.6\textwidth}{\textheight}{\LeftMainSep}{0pt}[main01]

\pagestyle{empty} % Disable all page numbering

\newcommand{\userinformation}[1]{\renewcommand{\userinformation}{#1}}

\newcommand{\CVHeading}[1]{ % New command for the headings within sections
	{\Large\textbf{#1}}\par
	\SmallSep % Used for spacing
}

\newcommand{\CVItem}[2]{ % New command for the item descriptions
	\textbf{\color{RoyalBlue} #1}\par
	#2
	\SmallSep % Used for spacing
}