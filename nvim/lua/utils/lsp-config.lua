local M = {}

function M.on_attach(client, bufnr)
    disableFormat(client)
end

function disableFormat(client)
    if vim.fn.has("nvim-0.8") == 1 then
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    else
        client.resolved_capabilities.document_formatting = false
        client.resolved_capabilities.document_range_formatting = false
    end
end

return M
