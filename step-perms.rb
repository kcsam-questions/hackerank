# n = number of staircases
# There are three ways to step on the staircase
# stepping 1/2/3 steps
$term = Array.new(37, 0)
# Complete the stepPerms function below.
def stepPerms(n)
    return 0 if n == 0
    return 1 if n == 1
    return 2 if n == 2
    return 4 if n == 3

    return $term[n] if $term[n] != 0
    $term[n] = stepPerms(n-1) + stepPerms(n-2) + stepPerms(n-3)
end
