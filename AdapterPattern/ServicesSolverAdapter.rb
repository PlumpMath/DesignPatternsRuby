require_relative 'AdapterPatternDSLFFIServices'
class ServicesSolverAdapter
  attr_accessor :services_solver_references
  def initialize
    @services_solver_references = ServiceSolver.new
  end
  
  def garfinkell_algorithm_request
    @services_solver_references.garfinkell_solver
  end
end

puts ServicesSolverAdapter.new.garfinkell_algorithm_request