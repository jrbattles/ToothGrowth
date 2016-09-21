# Statistical Inference
This project consists of a Simulation Exercise as well as an Inferential Data Analysis of impact of Vitamin C on Tooth Development.

## 1. Simulation Exercise

In this first section, I investigate the exponential distribution in R and compare it with the Central Limit Theorem. The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate parameter. The mean of exponential distribution is 1/lambda and the standard deviation is also 1/lambda. Set lambda = 0.2 for all of the simulations. I investigate the distribution of averages of 40 exponentials. Note that they analysis includes thousand simulations.

I illustrate via simulation and associated explanatory text the properties of the distribution of the mean of 40 exponentials. 

## 2. Inferential Data Analysis - Vitamin C Effect on Tooth Growth
Analyzing the effect of Vitamin C on tooth development.




Part 1: Simulation Exercise Instructionsless 

I

    Show the sample mean and compare it to the theoretical mean of the distribution.
    Show how variable the sample is (via variance) and compare it to the theoretical variance of the distribution.
    Show that the distribution is approximately normal.

In point 3, focus on the difference between the distribution of a large collection of random exponentials and the distribution of a large collection of averages of 40 exponentials.

As a motivating example, compare the distribution of 1000 random uniforms

and the distribution of 1000 averages of 40 random uniforms

This distribution looks far more Gaussian than the original uniform distribution!

This exercise is asking you to use your knowledge of the theory given in class to relate the two distributions.

Confused? Try re-watching video lecture 07 for a starter on how to complete this project.

Sample Project Report Structure

Of course, there are multiple ways one could structure a report to address the requirements above. However, the more clearly you pose and answer each question, the easier it will be for reviewers to clearly identify and evaluate your work.

A sample set of headings that could be used to guide the creation of your report might be:

    

Part 2: Basic Inferential Data Analysis Instructionsless 

Now in the second portion of the project, we're going to analyze the ToothGrowth data in the R datasets package.

    Load the ToothGrowth data and perform some basic exploratory data analyses
    Provide a basic summary of the data.
    Use confidence intervals and/or hypothesis tests to compare tooth growth by supp and dose. (Only use the techniques from class, even if there's other approaches worth considering)
    State your conclusions and the assumptions needed for your conclusions.
