
helm install vmfarms --version 0.1.1 \
            --set env=task2 \
            --set autoscaling.enabled=true \
            --set app.image=viniciusdanone/vmfarms:latest \
            --set domain={viniciusdanone.vmfars.local} \
            --create-namespace -n=vmfarms \
            --dry-run . `


