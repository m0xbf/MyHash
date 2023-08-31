{ ... }:

{
  # 自行添加的包
  additions = final: _prev: import ../pkgs { pkgs = final; };

  # 覆盖派生的包
  modifications = final: prev: {
    # # Examples
    # helloBar1 = prev.hello.overrideAttrs {
    #   separateDebugInfo = true;
    # };
    # helloBar2 = prev.hello.overrideAttrs (previousAttrs: {
    #   pname = previousAttrs.pname + "-bar";
    # });
    # helloBar3 = prev.hello.overrideAttrs (finalAttrs: previousAttrs: {
    #   pname = previousAttrs.pname + "-bar";
    # });
  };
}
