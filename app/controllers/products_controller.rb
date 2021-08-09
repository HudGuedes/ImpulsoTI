class ProductsController < ApplicationController
  before_action :authenticate_user!, except: :show
  has_scope :by_name

  def index
    @products = apply_scopes(Product.order_by).paginate(page: params[:page], per_page: 10)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def change_amount
    @product = Product.find(params[:id])
  end

  def change_amount_do
    product = Product.find(params[:id])
    if params[:operation] == 'add'
      operation = 0
      amount = product.amount + params[:qtd].to_i
    else
      operation = 1
      amount = product.amount - params[:qtd].to_i
    end
    product.update(amount: amount)
    return redirect_to products_path, notice: product.errors.full_messages.to_sentence if product.errors.present?

    Log.create(product: product, user: current_user, amount: params[:qtd].to_i, 
               operation_cd: operation)
    redirect_to products_path, notice: 'Produto alterado com sucesso'
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :amount)
  end

end
