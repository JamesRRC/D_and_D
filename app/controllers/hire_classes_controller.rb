class HireClassesController < InheritedResources::Base

  private

    def hire_class_params
      params.require(:hire_class).permit(:class_name, :class_description)
    end
end

