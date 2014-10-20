module KeysHelper
  def combine(akey)
    combined  = akey.ctrl ? "CTRL + " : ""
    combined += akey.alt ? "ALT + " : ""
    combined += akey.shift ? "SHIFT + " : ""
    combined + akey.code.chr
  end
end
