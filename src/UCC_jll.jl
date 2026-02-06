# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule UCC_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("UCC")
JLLWrappers.@generate_main_file("UCC", Base.UUID("00126aba-537c-58fc-8007-2fc5e2f5667b"))
end  # module UCC_jll
