# Roadmap

### Module System

The goal here is to support the OCaml module system, with its nesting, functors,
aliasing, and combination support, to provide a flexible and type-safe way of
structuring large amounts of code.

- [x] Modules
- [x] Nested Modules are flattened out
- [x] Control Exports via Interfaces
- [x] Module Functions Declarations
- [ ] Functors

### Type Generation

The goal here is to generate Dialyzer compatible type specs that can be used to
indicate the usage of the code that was generated. A decision neeeds to be made
as to whether we'll add a little overhead to make some of these typed
representations (specially the ones with phantom types), runtime safe too.

- [ ] Opaque Types
- [x] Phantom Types
- [x] Variants | Union Types
- [x] Polymorphic variant types
- [x] Alias Types
- [x] Record Types
- [x] Function Types
- [ ] Automatic Function Specs
- [x] Control Exports via Interfaces

### Expression Generation

Valid expressions in the Erlang language that are supported off the bad, or translated via FFI libraries or syntax extensions at the OCaml level.

- [ ] Literals:
  - [ ] Pid
  - [ ] Reference
  - [x] Integer
  - [x] Character
  - [x] String (OCaml strings turned as binary string)
  - [x] Float
  - [x] Maps
  - [x] Lists
  - [x] Tuples
- [x] Let Bindings
- [x] Variables
- [x] Function Reference
- [x] Function Calls
  - [x] Proper resolution of local nested modules
- [x] Case Expressions
- [ ] If Expressions
- [ ] Receive Expression
- [ ] Guards

### Pattern Matching

These are all different possible pattern matchings that we can do in let bindings,
function headers, case branches, etc. Not everything is allowed on that side!

- [x] Ignore
- [x] Binding
- [x] Tuple
- [x] List
- [x] Map
- [x] Exact match