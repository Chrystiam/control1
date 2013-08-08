class StatisticsController < ApplicationController

  def prints        
      @data = Procedure.sum(:print_amount, :group => :print_month) 
  end

  def assemblies        
      @data = Procedure.sum(:assembly_amount, :group => :assembly_month) 
  end

  def embroideries        
      @data = Procedure.sum(:embroidery_amount, :group => :embroidery_month) 
  end

  def outlines        
      @data = Procedure.sum(:outline_amount, :group => :outline_month) 
  end

  def cuts        
      @data = Procedure.sum(:cutting_amount, :group => :cutting_month) 
  end

  def labels        
      @data = Procedure.sum(:labeled_amount, :group => :labeled_month) 
  end

end
