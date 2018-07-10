class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  # GET /suppliers
  # GET /suppliers.json
  def index
    @suppliers = Supplier.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
  end

  # GET /suppliers/new
  def new
      #check if the current_user have the donation consent form filled    
        current_consent_form_type = ConsentFormType.find_by description: "Supplier"
        current_consent_form = ConsentForm.find_by user: current_user, consent_form_type: current_consent_form_type
      #pry
      if current_consent_form.nil? 
          #no consent 
          puts "!!!no consent"
          #create the consent end redirect to be signed
           current_consent_form = ConsentForm.new
           current_consent_form.consent_form_type = ConsentFormType.find_by description: "Supplier"
           current_consent_form.origin_url = "/suppliers/new"
           current_consent_form.user = current_user
           current_consent_form.save

          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.is_signed
          #consent form must be signed
          puts "!!!not signed"
          redirect_to  edit_consent_form_path (current_consent_form)
      elsif !current_consent_form.valid_until.nil? && current_consent_form.valid_until<Time.now
          #consent must be valid
          puts "!!!consent expired"
          redirect_to  edit_consent_form_path (current_consent_form)
      else
          #consent form ok

          #open new supplier
          @supplier = Supplier.new

      end
      
    
  end

  # GET /suppliers/1/edit
  def edit
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)

    respond_to do |format|
      if @supplier.save
        format.html { redirect_to @supplier, notice: 'Supplier was successfully created.' }
        format.json { render :show, status: :created, location: @supplier }
      else
        format.html { render :new }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    respond_to do |format|
      if @supplier.update(supplier_params)
        format.html { redirect_to @supplier, notice: 'Supplier was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier }
      else
        format.html { render :edit }
        format.json { render json: @supplier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    @supplier.destroy
    respond_to do |format|
      format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:person_id)
    end
end
