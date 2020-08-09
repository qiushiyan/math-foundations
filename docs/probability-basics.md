
# (PART) Probability Theory {-}

# Probability basics

The probability section should be rather applied, without delving into deeper branch of analysis and measure theory. 

## Probabilty space 

A probability space is a triple $(\Omega, \mathcal{F}, \mathbb{P})$ where 

- $\Omega$ is the set of all possible events in an experiment, called the **sample space**  

- $\mathcal{F}$ is a subset of $\Omega$, containing some of the events usually denoted by $A$. Events may be a singleton set ${\omega}$ or contain more than one sample point. The complement of event $A$ is another event, $A^c$. As we can only define probabilities for such subsets of $\Omega$ that are tied together like a family, $\mathcal{F}$ is assumed to be a **$\sigma$-field** which satisfy 
    1. If $A \in \mathcal{F}$ then $A^c \in \mathcal{F}$    
    2. If $A_i \in \mathcal{F}, \;i = 1,...,n$ is a countable sequence of sets, then $A_1 \cup A_2  \cup ... \cup A_n \in \mathcal{F}$

- $\mathbb{P}$ is a function that assigns probabilities to events: $\mathbb{P}: \mathcal{F} \rightarrow [0 , 1]$. 

**Axioms of probability** are concerned with specific properties of the function $\mathbb{P}$  

1. $\mathbb{P}(A) \ge 0 $ for all $A \in \mathcal{F}$   
2. $\mathbb{P}(\Omega) = 1$ and $\mathbb{P(\emptyset)} = 0$  
3. If $A_1, ..., A_n$ are disjoint sets ($A_i \cup A_j = \emptyset$)


## Counting  


<hr> 

Additionally, there are several useful identities in combination problems. The formal algebraic proof can be cumbersome, instead, here we draw on story proofs from the "Introduction to Probability" book [@blitzstein2019]. 

\BeginKnitrBlock{proposition}<div class="proposition"><span class="proposition" id="prp:vandermonde-identity"><strong>(\#prp:vandermonde-identity) </strong></span>$$
\binom{m + n}{k} = \sum_{j = 0}^{k}\binom{m}{j} \binom{n}{k  -j}
$$</div>\EndKnitrBlock{proposition}

Suppose we want to select a size $k$ committee out of $m$ juniors and $n$ seniors. The left side shows there are obviously $\binom{m + n}{k}$ probabilities. On the other side of the story, given there are $j$ juniors in the committee, there must be $k - j$ seniors in the committee. The right-hand side sums up the cases varying $k$. 



\BeginKnitrBlock{proposition}\iffalse{-91-80-97-114-116-110-101-114-115-104-105-112-115-32-80-114-111-98-108-101-109-93-}\fi{}<div class="proposition"><span class="proposition" id="prp:partnerships"><strong>(\#prp:partnerships)  \iffalse (Partnerships Problem) \fi{} </strong></span>
$$
\frac{(2n)!}{2^n \cdot n!} = (2n -1 ) \cdot (2n -3) \cdots 3 \cdot 1
$$</div>\EndKnitrBlock{proposition}


Both side of the identity count the ways to break $2n$ people into $n$ partnerships. According to the right side, we can form partnerships by lining up all $2n$ people and making the first and the second a pair, then the third and the fourth a pair, etc. This overcounts by a factor $2^n \cdot n!$ since the order of partnerships does not matter, nor does the order inside each pair. Alternatively, there are $2n - 1$ choices for people 1, $2n - 3$ choices for people 2 (or person 3 if people 2 is paired to people 1), and so on.  


## Conditional probability  

\BeginKnitrBlock{definition}\iffalse{-91-67-111-110-100-105-116-105-111-110-97-108-32-112-114-111-98-97-98-105-108-105-116-121-93-}\fi{}<div class="definition"><span class="definition" id="def:unnamed-chunk-1"><strong>(\#def:unnamed-chunk-1)  \iffalse (Conditional probability) \fi{} </strong></span></div>\EndKnitrBlock{definition}



## Random variables 


## Properties of expectation, variance, and covariance 

## Conditional expectation 
