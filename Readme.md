#### Install _eksdemo_ impure

* add to configuration.nix

```
environment.systemPackages = with pkgs; [
    (callPackage <path-to>/eksdemo.nix {})
];
```

* fire: `nixos-rebuild switch --flake .# --impure`
