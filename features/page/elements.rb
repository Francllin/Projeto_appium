class FuncionalidadesOrgzly
    def botao_ok
        find_element(id: 'button1')
    end

    def close_drawer
        find_element(class: 'android.widget.ImageButton')
    end
    
    def add_notebooks
        find_element(id: 'fab')
    end
    
    def nome_notebook
        find_element(id: 'dialog_new_book_container')
    end
     
     def botao_crear
         find_element(id: 'button1')
     end

     def titulo_nome_notebook(elemento)
        find_elements(id: 'item_book_title').each do |item|
         if item.text == elemento
            return true
             break
         end
        end
        return false
      end
end