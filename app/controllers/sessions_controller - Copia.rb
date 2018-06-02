class SessionsContoller < ApplicationController
    # GET /sessions/new
    def new
    end
    
    # POST /sessions
    # POST /sessions.json
    def create
    end
    
    # DELETE /sessions/1
    # DELETE /sessions/1.json
    def destroy
    end
    
    
private
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:good_type).permit(:id)
    end
end