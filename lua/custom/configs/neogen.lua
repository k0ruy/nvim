local neogen = require('neogen')


local options = {
enabled = true,
    languages = {
        python = {
            template = {
                annotation_convention = "numpydoc" -- for a full list of annotation_conventions, see supported-languages below,
                }
        },
    }
}

return options
