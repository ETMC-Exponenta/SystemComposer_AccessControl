function AccessControl_simple_analytics(instance,varargin)
if instance.isComponent()
workload = 0;    
    for child=instance.Components
        child_workload = child.getValue("GenericComponent.Workload");
        workload = workload + child_workload;
    end
instance.setValue("GenericComponent.Workload",workload);
end
end