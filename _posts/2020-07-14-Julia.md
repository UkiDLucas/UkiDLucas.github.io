---

title: 'Julia Language'
date: 2020-07-14
permalink: /2020-07-14-Julia/
excerpt: 'In the automotive industry, such as in Advanced Driver Assistance Systems (ADAS), there is **only one language option and it is C/C++**. Even if Python is used in most of the machine learning examples today, there is virtually no chance it will ever be used in the automotive production systems. **Julia on the other hand, might be the language of the future**. Please do not hold your breath however, it may take a decade. As always, my opinions do not necessarily reflect the opinions of my employer. This post is meant to organize my own thoughts, rather than provide an original tutorial.'
tags:
  - machine learning
  - Julia
  - ADAS
  - Jupyter lab
  - conda
  - tutorial 

---



# Julia Language



At the time of this writing, I am using [Julia 1.4](https://docs.julialang.org/en/v1/). I had several false starts with Julia in the past, but a quick look at GitHub providing over [10,000 search results](https://github.com/search?l=Julia&o=desc&q=Julia&s=stars&type=Repositories) tells me that Julia has come of age.



Julia has some very attractive attributes:

* it is [super fast](https://julialang.org/assets/benchmarks/benchmarks.svg), on par with C
* it is open source
* it is clean and elegant
* it can call C and Python directly
* it is designed for parallelism
* it is designed for distributed programming



## Install Jupyter lab

You can write Julia using command line prompt, but it is infinitely easier to learn by using the browser-based notebook.

I am working on MacOS and use the Anaconda (Python conda) package installer.

```shell
$ conda install -c conda-forge jupyterlab
# follow the prompts, press 'y'
# change to the local directory you want to store your notebook in:
$ cd /Users/your_name/your_github_repository/
$ jupyter lab
```



The Jupyter lab should start at the address: http://localhost:8888/





![Jupyter lab with Julia 1.4](https://ukidlucas.github.io/images/Julia_001.png)





## Writing a Function

The following function looks very normal, please note: 

* function .. end instead of { .. }
* the return type and input type are omitted 
* "to the power of 2" represented as "^2".

```julia
# Calculate the hypotenuse (i.e. the height) of the triangle, when knowing 2 sides:
function hypotenuse(side_a, side_b)
    return sqrt( (side_a^2) + (side_b^2) )
end
```

You can pass either Integers or Floats and you will get a Float back.

```julia
hypotenuse(3.0, 4)
5.0
```

The next, similar method introduces:

* the input types are defined as ::Float64 and if you pass anything else (e.g. Integer) the exception will be thrown
* the function returns 3 argument (a tuple)

```julia
# Calculate the hypotenuse (i.e. the height) of the triangle, when knowing 2 sides:
function hypotenuse(side_a::Float64, side_b::Float64)
    return sqrt( (side_a^2) + (side_b^2) ), side_a, side_b
end
```

Example of the Error:

```julia
hypotenuse(3.0, 4)
MethodError: no method matching hypotenuse(::Float64, ::Int64)
Closest candidates are:
  hypotenuse(::Float64, !Matched::Float64) at In[4]:3

Stacktrace:
 [1] top-level scope at In[6]:1
```

Example of the returned Tuple:

```julia
hypotenuse(3.0, 4.0)
(5.0, 3.0, 4.0)
```



A more compact way of defining a method is a one-liner:

```julia
hypotenuse2(side_a, side_b) = sqrt( (side_a^2) + (side_b^2) )
```

The behavior is the same:

```julia
hypotenuse2(3,4)
5.0
```

* The one-liner can be broken down as long the breaks and indentations make logical sense

* The return statement is omitted and the last set of values is returned 

```julia
hypotenuse3(side_a, side_b) = 
    sqrt( 
            (side_a^2) + (side_b^2) 
        ), 
    side_a, 
    side_b
```

Note that the side_a is still an Integer when returned.

```
hypotenuse3(3, 4.0)
(5.0, 3, 4.0)
```



## Keyword "using Printf"

* The Printf outputs a String without the new line
* the "%0.5f" takes an number and adjusts number of decimal points displayed
* Julia has a 1-based counting system unlike 0-based C/C++, Java, Python.

```julia
using Printf
@printf "Side A = %0.0f , " results[2] 
@printf "Side B = %0.2f , " results[3] 
@printf "Result = %0.5f \n" results[1] 
```

```
Side A = 3 , Side B = 4.00 , Result = 5.00000 

```



## Text Parsing and Printing

* The text strings can be accessed as 1-based arrays
* Julia supports Unicode, hence **Greek, Old Persian cuneiform** letters can be used thruout the code.
* use **length**( "some text" )
* use of **begin**
* use of **end**

```julia
text = 
"When Xerxes 𐎧𐏁𐎹𐎠𐎼𐏁𐎠 wrote again, 'Hand over your arms.', Leonidas wrote in reply, 'μολὼν λαβέ [mo.loːn la.bé] - come and take them'."
print(text, "\n") # print the text and append a line break
println(findfirst( "Hand over your arms", text))
println(findfirst( "μολὼν λαβέ", text))
println(findfirst( "come and take them", text))
println(findfirst( "Xerxes", text))
println(findfirst( "Leonidas", text))
println("- The name of the Persian king was: ", text[begin + 5: end - 154], " 𐎧𐏁𐎹𐎠𐎼𐏁𐎠")
println("- The name of the Spartan king was: ", text[begin + 78: length(text) - 45])
println("- Xerces said: ", text[56:74])
print("- Leonidas answered: ", text[105:123])
println(", which means \"", text[146:163], "\".")
```

```
When Xerxes 𐎧𐏁𐎹𐎠𐎼𐏁𐎠 wrote again, 'Hand over your arms.', Leonidas wrote in reply, 'μολὼν λαβέ [mo.loːn la.bé] - come and take them'.
56:74
105:123
146:163
6:11
79:86
- The name of the Persian king was: Xerxes 𐎧𐏁𐎹𐎠𐎼𐏁𐎠
- The name of the Spartan king was: Leonidas 
- Xerces said: Hand over your arms
- Leonidas answered: μολὼν λαβέ, which means "come and take them".
```



For more information review the [official "strings" documentation](https://docs.julialang.org/en/v1/manual/strings/index.html).



## Numbers

For more information on [numbers](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/index.html), please review the official Julia documentation.

```julia
π = parse(Float64,"3.14159265358979323846264338327950288419716939937510") # convert from text string
println(typeof(π), " ", π) # please note the limitation of Float64 = 3.141592653589793

function circle_area(r, π)
    return π*r^2 # you have to put in '*' for the multiplication π*(r^2)
end

circle_area(2.0, π)
```



```
Float64 3.141592653589793
12.566370614359172
```







# RESOURCES

* [https://docs.julialang.org/en/v1/](https://docs.julialang.org/en/v1/)

* [https://juliabyexample.helpmanual.io/](https://juliabyexample.helpmanual.io/)

* [https://github.com/samuelcolvin/JuliaByExample](https://github.com/samuelcolvin/JuliaByExample)

* [JuliaObserver.com - IJulia](https://juliaobserver.com/packages/IJulia)

* [GitHub search for Julia](https://github.com/search?l=Julia&o=desc&q=Julia&s=stars&type=Repositories)

* [Writing on GitHub (Markdown)](https://docs.github.com/en/github/writing-on-github)

* [Julia docs: Strings](https://docs.julialang.org/en/v1/manual/strings/index.html)

* 

  

