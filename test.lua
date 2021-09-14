function Inherit (object, field)
    if field == "parent" then     -- avoid loops
      return nil
    end
    local p = object.parent       -- access parent object
    if type(p) == "table" then    -- check if parent is a table
      return p[field]             -- (this may call Inherit again)
    else
      return nil
    end
  end

  setfallback("index", Inherit)