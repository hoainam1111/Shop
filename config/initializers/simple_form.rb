SimpleForm.setup do |config|
  config.wrappers :default, class: "form-group" do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: "block text-sm font-medium text-gray-700"
    b.use :input, class: "mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
    b.use :error, wrap_with: { tag: :span, class: "text-red-500 text-xs italic" }
  end
end
