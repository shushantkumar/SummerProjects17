-module(currying).
-export([add/1,sub/1,mult/1,divi/1,greaterThanX/1,lessThanX/1]).

add(X)-> fun(Y)->X +Y end.
sub(X)-> fun(Y)->X -Y end.
mult(X)-> fun(Y)->X *Y end.
divi(X)-> fun(Y)->X /Y end.
greaterThanX(X)->fun(Y)->
if
X<Y->true; 
true->false
end 
end.
lessThanX(X)->fun(Y)->
if 
X>Y->true; 
true->false 
end
end.

%% Examples of curried functions in the classic higher order functions like map, filter and fold %%
%% Even = fun(X) -> (X rem 2) =:= 0 end. 
%% Even(8). 
%% Even(7). 
%% lists:map(Even, [1,2,3,4,5,6,8]). 
%% lists:filter(Even, [1,2,3,4,5,6,8]). 
%% lists:foldl(Even, 0, [1,2,3,4,5,6,8]). 
%% lists:takewhile(Even, [1,2,3,4,5,6,8]). 
%% lists:dropwhile(Even, [1,2,3,4,5,6,8]). 

