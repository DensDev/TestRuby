class TodoController < ApplicationController

    def index
        @tasks = Todo.all
    end

    def tambah
        @tambah = Todo.new
    end

    def kirim
        @kirim = Todo.new(todo_params)

        if @kirim.save

            redirect_to todo_index_path, notice: 'Task berhasil ditambahkan'
        else

            render :tambah
        end
        
    end

    def edit
        @ambil_id = Todo.find(params[:id])
    end

    def update
        @ambil_id = Todo.find(params[:id])

        if @ambil_id.update(todo_params)
            
            redirect_to todo_index_path, notice: 'Task berhasil diupdate'
        else

            render :edit
        end
        
    end

    def destroy
        @ambil_id = Todo.find(params[:id])

        if @ambil_id.destroy

            redirect_to todo_index_path, notice: 'Task berhasil dihapus'
        else
            
            render :index
        end
        
    end

    private
    def todo_params
        params.require(:todo).permit(:task, :deadline, :status)
    end


end
