module AlgorithmSolver
  def garfinkell_c_solver
    'garfinkell_c_solver algorithm'
  end
end


class ServiceSolver
  include AlgorithmSolver
  
  def garfinkell_solver
    garfinkell_c_solver
  end
end
