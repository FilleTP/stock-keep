# frozen_string_literal: true

SimpleForm.setup do |config|
  # Default wrapper for all inputs
  config.wrappers :tailwind_form, tag: 'div', class: 'mb-5', error_class: '' do |b|
    b.use :html5
    b.use :placeholder
    b.use :label, class: 'block text-sm font-medium text-gray-700 mb-1'
    b.use :input, class: 'appearance-none block w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm placeholder-gray-400 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm'
    b.use :error, wrap_with: { tag: 'p', class: 'mt-1 text-sm text-red-600' }
    b.use :hint, wrap_with: { tag: 'p', class: 'mt-1 text-sm text-gray-500' }
  end

  # Wrapper specifically for boolean (checkbox) inputs
  config.wrappers :tailwind_boolean, tag: 'div', class: 'mb-5 flex items-center', error_class: '' do |b|
    b.use :html5

    b.wrapper tag: 'label', class: 'flex items-center space-x-2 text-sm text-gray-900' do |ba|
      ba.use :input, class: 'h-4 w-4 text-indigo-600 border-gray-300 rounded focus:ring-indigo-500 align-middle'
      ba.use :label_text, wrap_with: { tag: 'span', class: 'mt-1 text-sm text-gray-900 align-middle' }
    end

    b.use :error, wrap_with: { tag: 'p', class: 'mt-1 text-sm text-red-600' }
    b.use :hint, wrap_with: { tag: 'p', class: 'mt-1 text-sm text-gray-500' }
  end

  config.wrapper_mappings = {
    boolean: :tailwind_boolean
  }

  config.default_wrapper = :tailwind_form

  config.boolean_style = :nested

  config.button_class = 'inline-flex justify-center py-2 px-4 border border-transparent shadow-sm text-sm font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500'

  config.error_notification_class = 'bg-red-100 text-red-700 px-4 py-3 rounded relative mb-4'

  config.browser_validations = false

  config.input_class = ''
end
