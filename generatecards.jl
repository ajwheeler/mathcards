function addition(r1=5:10, r2=10:20)
    i = rand(r1)
    j = rand(r2)
    """
    \\[
    $i + $j = \\underline{\\hspace{1.5cm}} 
    \\]
    """
end

function subtraction(r=5:20)
    i = rand(r)
    j = rand(2:i)
    """
    \\[
    $i - $j = \\underline{\\hspace{1.5cm}}
    \\]
    """
end

function pair(r1=5:10, r2=10:20)
    i = rand(r1)
    j = rand(r2)
    """\\[ $i + $j = \\underline{\\hspace{1.5cm}} 
    \\]
    \\[
    $(i+j) - \\underline{\\hspace{1.5cm}} = $j
    \\]"""
end

function triplet(r1=5:10, r2=10:20)
    i = rand(r1)
    j = rand(r2)
    """    \\[
    $i + $j = \\underline{\\hspace{1.5cm}} 
    \\]
    \\[
    $(i+j) - \\underline{\\hspace{1.5cm}} = $j
    \\]
    \\[
    $(i+j) - \\underline{\\hspace{1.5cm}} = $i
    \\]"""
end

function whatcomesnext(;startrange=1:70, steprange=1:10)
    i = rand(startrange)
    j = rand(steprange)
    """
    What comes next? \\\\
    \\vspace*{-0.3in}
    $i, $(i + j), $(i + 2*j), \\underline{\\hspace{1.5cm}} \\\\
    """
end

function card(problems)
    """
    \\begin{flashcard}{asdf}
    \\Huge
    \\center
    \\vspace*{-0.7in}
    $problems
    \\end{flashcard}
    """
end

function document(cards)
"""
\\documentclass[letter, grid,frame,backs]{flashcards}
\\usepackage{geometry}
\\geometry{margin=0.1in}
\\usepackage{amsmath}
\\renewcommand{\\baselinestretch}{1.5}
\\begin{document}
$cards
\\end{document}
"""
end

n = 6
cards = vcat([card(triplet()*whatcomesnext()) for _ in 1:n],
             [card(whatcomesnext()*whatcomesnext()*whatcomesnext()) for _ in 1:n],
             [card(addition()*subtraction()*addition()*subtraction()) for _ in 1:n],
             [card(pair()*pair()) for _ in 1:n]
            )
println(document(*(cards...)))
