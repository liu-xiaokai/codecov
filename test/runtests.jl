using Test
push!(LOAD_PATH, "../src")
using VQC

@testset "test quantum algorithm" begin
    include("algs.jl")
end

@testset "test circuit parameters" begin
    include("parameter.jl")
end


@testset "test quantum circuit gradient" begin
    include("circuitgrad.jl")
    include("circuit2dgrad.jl")
end

@testset "test quantum state gradient (may not variable via a quantum computer)" begin
    include("stategrad.jl")
end