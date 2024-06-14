\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{checkbook}[2024/06/13 v1.0 check printer]

\DeclareOption{wallet}{
    \setlength\paperheight{11in}
    \setlength\paperwidth{8.5in}
}

\newcommand\@ptsize{}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\DeclareOption{sans}{\AtBeginDocument{\renewcommand{\familydefault}{\sfdefault}}}
\DeclareOption{roman}{\AtBeginDocument{\renewcommand{\familydefault}{\rmdefault}}}

\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}

\ExecuteOptions{wallet,11pt,final}
\ProcessOptions\relax

\input{size1\@ptsize.clo}

\setlength{\parindent}{0cm}
\RequirePackage{graphicx}
\newcommand*{\MICREncoding}[1]{
    \LARGE{\fontspec{MICREncoding.ttf}{#1}}
}

\newcommand*{\emptychk}[1]{
    \begin{minipage}[c][2.85in][t]{2in}
        \begin{center}\MICREncoding{#1}\end{center}
        \raggedright\small\textbf{DATE} \\
        \vspace{.2in}
        \textbf{PAY TO} \\
        \vspace{.2in}
        \textbf{AMOUNT \$} \\
        \vspace{.2in}
        \textbf{MEMO} \\
        \vspace{.2in}
        \textbf{CATEG.:} \\
        \vspace{.2in}
        \textbf{ACCT:} \accountname{} \\

    \end{minipage}
    \hspace{.2in}
    \begin{minipage}[c][2.85in][t]{5.5in}
        \raggedright
        \MakeUppercase{\textbf{\fullname{}}} \hfill {\MICREncoding{#1}} \\
        \MakeUppercase{\streetaddress{}} \\
        \vspace*{.075in}
        \MakeUppercase{\citystatezip{}} \hspace{3in} \tiny{DATE \hrulefill{}} \\
        \vspace*{.1in}
        \raggedright \tiny{PAY TO THE ORDER OF \rule{3.2in}{.5pt}} \Huge\textbf{\$} \normalsize \framebox(.75in,.25in){} \\
        \vspace*{.2in}
        \hrulefill{} \tiny{DOLLARS} \\
        \vspace*{.1in}
        \includegraphics[height=.35in]{logo.png} \\
        \vspace*{.1in}
        \begin{minipage}[b]{2in}
            \tiny{MEMO \hrulefill{}}
        \end{minipage}
        \hspace{.5in}
        \begin{minipage}[b]{2.9in}
            \tiny{\hrulefill}
        \end{minipage} \\
        \vspace*{.15in}
        \hspace*{.05in}\MICREncoding{A\routingnumber{}A \accountnumber{}C   #1}
    \end{minipage}
    \break
}
\newcommand*{\chk}[6]{
    \begin{minipage}[c][2.85in][t]{2in}
        \begin{center}\MICREncoding{#1}\end{center}
        \raggedright\small\textbf{DATE:} #2 \\
        \vspace{.2in}
        \textbf{PAY TO:} #3 \\
        \vspace{.2in}
        \textbf{AMOUNT \$}#4 \\
        \vspace{.2in}
        \textbf{MEMO:} #6 \\
        \vspace{.2in}
        \textbf{CATEG.:} \\
        \vspace{.2in}
        \textbf{ACCT:} \accountname{} \\

    \end{minipage}
    \hspace{.2in}
    \begin{minipage}[c][2.85in][t]{5.5in}
        \raggedright
        \MakeUppercase{\textbf{\fullname{}}} \hfill {\MICREncoding{#1}} \\
        \MakeUppercase{\streetaddress{}} \\
        \MakeUppercase{\citystatezip{}} \hfill \tiny{DATE} \normalsize{\textbf{\underline{#2}}} \\
        \vspace*{.1in}
        \raggedright \tiny{PAY TO THE ORDER OF} \vtop{\vskip-.18in\hsize=3.25in\Large{\textbf{\uline{#3 \hfill}}}}\hfill \Large{\textbf{\underline{\$#4}}} \\
        \raggedleft \textbf{\uline{#5 \hfill}} \vtop{\vskip0in\hsize=.5in\tiny{DOLLARS}}\\
        \vspace*{.1in}
        \raggedright \includegraphics[height=.35in]{logo.png} \\
        \begin{minipage}[b]{2in}
            \tiny{MEMO: #6}
        \end{minipage}
        \hspace{.5in}
        \begin{minipage}[b]{2.8in}
            \tiny{\hrulefill}
        \end{minipage} \\
        \vspace*{.15in}
        \hspace*{.05in}\MICREncoding{A\routingnumber{}A \accountnumber{}C   #1}
    \end{minipage}
    \break
}
