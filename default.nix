{ mkDerivation, async, base, bytestring, cereal, containers
, cryptonite, memory, QuickCheck, stdenv, stm, test-framework
, test-framework-quickcheck2, transformers, zlib
}:
mkDerivation {
  pname = "ssh-hans";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    async base bytestring cereal containers cryptonite memory stm
    transformers
  ];
  librarySystemDepends = [ zlib ];
  testHaskellDepends = [
    base bytestring cereal cryptonite memory QuickCheck test-framework
    test-framework-quickcheck2
  ];
  description = "Implementation of the SSH2.0 protocol";
  license = stdenv.lib.licenses.bsd3;
}
