class ResponsesController < ApplicationController

    before_action :define_question, :define_response
    def index
      @message = flash[:message]
    end

    def new
      puts "*" * 60
      p session[:number_correct]
      @number_correct = session[:number_correct]
      @feedback = flash[:feedback]
      flash[:message] = "TESTING FLASH"
      p session[:message]
      session.clear
      p session[:message]
      @message = session[:message]

    end

    def define_question
        @question = Question.order("RANDOM()").limit(1)[0]
    end

    def define_response
        @questionResponse = Response.new({ question: @question })
    end

    def create
        session[:message] = "YOLO"
        session[:number_correct] ||= 0
        @number_correct = session[:number_correct]
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            @number_correct = @number_correct + 1
            session[:number_correct] = @number_correct
            flash[:feedback] = "Correct!"
        else
            flash[:feedback] = "Incorrect..."
        end
        redirect_to '/random-question'
    end

    def response_params
        params.require(:response).permit(:answer_id, :question_id)
    end

end
