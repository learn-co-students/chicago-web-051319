require_relative './config/environment'
require_relative 'app/controllers/landmarks_controller'
require_relative 'app/controllers/visits_controller'

use VisitsController
use LandmarksController
run ApplicationController
