{ lib
, mkPulumiPackage
}:
mkPulumiPackage rec {
  owner = "pulumi";
  repo = "pulumi-azure-native";
  version = "1.85.0";
  rev = "v${version}";
  hash = "sha256-12JjDHYCxx/eQBIGpMO9FnjYFu54QT80zvivDYiHWjM=";
  vendorHash = "sha256-RhZBvFjleVxskFcuNZcjcq9Hc+bLfBL9PsZg5rIPJ3Y=";
  cmdGen = "pulumi-gen-azure-native";
  cmdRes = "pulumi-resource-azure-native";
  extraLdflags = [
    "-X github.com/pulumi/${repo}/provider/pkg/version.Version=v${version}"
  ];
  fetchSubmodules = true;
  __darwinAllowLocalNetworking = true;
  meta = with lib; {
    description = "Native Azure Pulumi Provider";
    homepage = "https://github.com/pulumi/pulumi-azure-native";
    license = licenses.asl20;
    maintainers = with maintainers; [ veehaitch trundle ];
  };
}
