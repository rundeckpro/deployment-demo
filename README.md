# Rundeck Demo Deployment Application

## About this project

This is a sample Sinatra application with just enough methods and testing to use in a CI/CD example demonstration. Feel free to contact us at hello@rundeck.com if you'd like to see all the parts moving together.

## Rundeck helper Methods

There is one useful helper method in this application, /dockerhub_tags

This method receives one GET parameter, *image*. The value of *image* should be a container path for Docker Hub. For example, if you're testing this container, you could use '?image=khudgins/sinatrademo' and the methor will return a JSON array of every tag path for that image on Docker Hub. This is useful in Rundeck as a URL for a remote option value. (See https://docs.rundeck.com/docs/manual/job-options.html#remote-option-values )


Updated 11-13-20 at 7:01pm
