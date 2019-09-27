module Spree
  module Admin
    class TemplatesController < ResourceController

      def index
        session[:return_to] = request.url
        respond_with(@collection)
      end

      def new
        @template = Spree::Template.new
      end

      def create
        @template = Spree::Template.new(permitted_resource_params)
        invoke_callbacks(:create, :before)
        if @template.save
          invoke_callbacks(:create, :after)
          flash[:success] = Spree.t('template.successfully_created')
          redirect_to edit_admin_template_path(@template)
        else
          invoke_callbacks(:create, :fails)
          respond_with(@template)
        end
      end

      def show
        redirect_to action: :edit
      end

      def edit
      end

      def update
        if @object.update_attributes(permitted_resource_params)
          flash[:success] = flash_message_for(@object, :successfully_updated)
          respond_with(@object) do |format|
            format.html { redirect_to spree.edit_admin_template_path(@template) }
            format.js   { render layout: false }
          end
        else
          respond_with(@object)
        end
      end

      def destroy
        @template = Spree::Template.find(params[:id])
        if @template.products.present?
          @template.products.update(template_id: nil)
        end
        @template.discard
        flash[:success] = t('spree.notice_messages.template_deleted')
        respond_with(@template) do |format|
          format.html { redirect_to collection_url }
          format.js { render_js_for_destroy }
        end
      end

      private

        def find_resource
          Spree::Template.with_deleted.find(params[:id])
        end

        def collection
          return @collection if @collection
          params[:q] ||= {}
          params[:q][:s] ||= "name asc"
          @search = super.ransack(params[:q])
          @collection = @search.result.
                order(id: :asc).
                page(params[:page]).per(params[:per_page])
        end
    end
  end
end
