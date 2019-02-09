% Class file for technical notes of the Einstein Telescope design study
% Andreas Freise, Simon Chelkowski 05/03/2009
% (based on an old template for Virgo notes from various people)
 
% --- identification
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ET-DS}[2001/03/03 v0.1 LaTeX2e ET-DS document class]

% --- using pkgs
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}


% --- define options
\newif\if@color\@colorfalse
\newif\if@pdf\@pdffalse
\DeclareOption{color}{\@colortrue}
\DeclareOption{pdftex}{\@pdftrue}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\if@pdf
\RequirePackage[pdftex]{graphicx}
\else
\RequirePackage{graphicx}
\fi

\LoadClass[a4paper]{article}

\topmargin -15mm
\headsep 10mm
\headheight 23mm

\textheight225mm 
\textwidth170mm

\hoffset 0mm
\voffset 0mm
\oddsidemargin  -5mm
\evensidemargin -5mm

\leftmargin 20mm
\rightmargin 20mm

\if@color
\RequirePackage{color}
\fi

\def\affiliation#1{\gdef\@affiliation{#1}}
\def\issue#1{\gdef\@issue{#1}}
\def\@issue{\@latex@error{No \noexpand\issue given}\@ehc}
\def\refnum#1{\gdef\@refnum{#1}}
\def\@refnum{\@latex@error{No \noexpand\refnum given}\@ehc}
\def\shorttitle#1{\gdef\@shorttitle{#1}}
\def\@shorttitle{\@latex@error{No \noexpand\shorttitle given}\@ehc}

\renewcommand\maketitle{
\begin{titlepage}\begin{center}\clearpage 
\vskip 6cm
dedicated in memory of Stefano Braccini, a colleague who greatly contributed to the ET project and a friend who left us. \par 
\cleardoublepage
\begin{tabular}{cccl}
&  \includegraphics[height=14mm]{FP7-logo}&\\
& & & \\
&{\Large European Commission} & \\
&{\small{\it FP7, Grant Agreement 211743}} & \\
\end{tabular}
\vskip 2cm
{\begin{picture}(0,0)
\if@color
\put(-95,0){\includegraphics[height=18.8mm]{ET-Logo}}
\else
\put(-100,0){\includegraphics[height=18.8mm]{ET-Logo_bw}}
\fi
\end{picture}}
\vskip2cm
   {\LARGE \bf \@title \par}%
   \vskip 3em%
   {\sf \LARGE \@refnum \par}%
   \vskip 3em%
%{\LARGE  This document has been edited by \par}
\vskip 2.5cm
{\small 
 %\input{ETDSeditors.tex} 
The research leading to these results has received funding from the European
Community's Seventh Framework
Programme (FP7/2007--2013) under grant agreement n~211743.
}
\vskip0.5cm
%{\LARGE on behalf of the authors, the ET Science Team\par }%
\vskip0.5cm
 {\clearpage}%
   {\LARGE Author list: \textbf{ET Science Team} \par
%\textcolor{red}{Draft List To Be Checked} \par 
\vskip0.3cm
\large
     \lineskip .75em%
     \begin{tabular}[t]{c}%
       \@author
     \end{tabular}\par}%
   \vskip 1.0em%
   {\normalsize \textit{Issue:}~ \@issue \par}%
   {\normalsize \textit{Date:}~ \@date \par}%
   \vfil\null
{\small 
   \vskip 0.8em%
\@affiliation
\vfill

ET -- Einstein gravitational wave Telescope -- Design Study * A joint European Project \\
Web: \url{http://www.et-gw.eu} \quad Email: EuropeanProjectsService@ego-gw.it
} \end{center}
\end{titlepage}
}


\pagestyle{fancy}
\lhead{\setlength{\unitlength}{1mm}
\begin{picture}(0,0)
\if@color
\put(0,1){\includegraphics[height=9.4mm]{ET-Logo}}
\else
\put(0,2){\includegraphics[height=9.4mm]{ET-Logo}}
\fi
\end{picture}}


\chead{
\centerline{\textsf{\@shorttitle}}
}

\rhead{\begin{picture}(0,0)
\put(-100,27){\makebox(0,0)[lb]{\footnotesize \@refnum}}
\put(-100,18){\makebox(0,0)[lb]{\footnotesize \textit{issue}~: \@issue}}
\put(-100,8){\makebox(0,0)[lb]{\footnotesize \textit{date}~: \@date}}
\put(-100,0){\makebox(0,0)[lb]{\footnotesize \textit{page}~: \thepage\ of \pageref{LastPage}}}
\end{picture}}

\lfoot{} 
\cfoot{} 
\rfoot{}

\message{note completed OK}
