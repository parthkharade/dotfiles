local skeld = require("skel-nvim.defaults")
require("skel-nvim").setup{
  -- file pattern -> template mappings
  mappings = {
    ['*.cpp'] = "cpp.skel",
    ['*.h']   = "h.skel",
    ['*.vhd']   = "vhd.skel",
  },
  substitutions = {
    ['FILENAME']             = skeld.get_filename,
    ['NAME']                 = skeld.get_author,
    ['DATE']                 = skeld.get_date,
    ['CPP_HDR_GUARD']        = skeld.get_cppheaderguard,
    ['CPP_TEST_HDR_GUARD']   = skeld.get_testheaderguard,
    ['CPP_HDR_INCLUDE']      = skeld.get_headerinclude,
    ['CLASS_NAME']           = skeld.get_classname2,
    ['NAMESPACE_OPEN']       = skeld.get_namespaceopen,
    ['NAMESPACE_CLOSE']      = skeld.get_namespaceclose,
  },
}
