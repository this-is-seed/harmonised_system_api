module Api
  class ProductsController < ApplicationController

    def index
      products = Product.filter(params.slice(:by_keyword))
      render json: {data: products, error: []}, status: :ok
    end

    def show
      product = Product.find_by(code: params[:code])
      if product.present?
        render json: {data: product, error: []}, status: :ok
      else
        render json: {data: [], error: ["product not found"]}, status: :unprocessable_entity
      end
    end

    def update
      product = Product.find(update_params[:id])
      if product.update(update_params)
        render json: {data: product, error: []}, status: :ok
      else
        render json: {data: [], error: [product.errors.full_messages.join(",")]}, status: :unprocessable_entity
      end
    end

    private

    def update_params
      params.permit(:id, :code, :description)
    end

  end
end