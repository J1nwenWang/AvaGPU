#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
  struct PrintFunctionsPass : public FunctionPass {
    static char ID;
    PrintFunctionsPass() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      errs() << "Found function: " << F.getName() << "\n";
      return false;
    }
  };
}

char PrintFunctionsPass::ID = 0;
static RegisterPass<PrintFunctionsPass> X("print-functions", "Print the name of every function in the module");

