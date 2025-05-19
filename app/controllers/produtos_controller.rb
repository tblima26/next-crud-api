class ProdutosController < ApplicationController
  include Pagy::Backend
  before_action :set_produto, only: %i[ show update destroy ]

  # GET /produtos
  def index
    @pagy, @produtos = pagy(Produto.all, items: 10 )
    #response.headers.merge!(pagy_headers_merge(@pagy))
    #@produtos = Produto.all
    #render json: @produtos
    render json: {
      data: @produtos,
      pagination: {
        page: @pagy.page,
        pages: @pagy.pages,
        items: @pagy.count,
      }
    }

  end

  # GET /produtos/1
  def show
    render json: @produto
  end

  # POST /produtos
  def create
    @produto = Produto.new(produto_params)

    if @produto.save
      render json: @produto, status: :created, location: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /produtos/1
  def update
    if @produto.update(produto_params)
      render json: @produto
    else
      render json: @produto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /produtos/1
  def destroy
    @produto.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto
      @produto = Produto.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def produto_params
      params.expect(produto: [ :nome, :preco ])
    end
end
