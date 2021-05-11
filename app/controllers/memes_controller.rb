class MemesController < ApplicationController
    def index
        @memes = Meme.all
    end

    def show
    end

    def new
        @meme = Meme.new
    end

    def edit
    end

    def create
        @meme = Meme.new(meme_params)
    
        respond_to do |format|
          if @meme.save
            format.html { redirect_to @meme, notice: "Meme was successfully created." }
            format.json { render :show, status: :created, location: @meme }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @meme.errors, status: :unprocessable_entity }
          end
        end
      end
    
      def update
        respond_to do |format|
          if @meme.update(meme_params)
            format.html { redirect_to @meme, notice: "Meme was successfully updated." }
            format.json { render :show, status: :ok, location: @meme }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @meme.errors, status: :unprocessable_entity }
          end
        end
      end
    
      def destroy
        @meme.destroy
        respond_to do |format|
          format.html { redirect_to memes_url, notice: "Meme was successfully destroyed." }
          format.json { head :no_content }
        end
      end
    
      private
        def set_meme
          @meme = Meme.find(params[:id])
        end
    
        def meme_params
          params.require(:meme).permit(:name, :description, :downloads, :price, :keyword)
        end

end
