Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Produto))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Produto))==(Machine(Produto));
  Level(Machine(Produto))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Produto)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Produto))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Produto))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Produto))==(?);
  List_Includes(Machine(Produto))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Produto))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Produto))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Produto))==(?);
  Context_List_Variables(Machine(Produto))==(?);
  Abstract_List_Variables(Machine(Produto))==(?);
  Local_List_Variables(Machine(Produto))==(?);
  List_Variables(Machine(Produto))==(?);
  External_List_Variables(Machine(Produto))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Produto))==(?);
  Abstract_List_VisibleVariables(Machine(Produto))==(?);
  External_List_VisibleVariables(Machine(Produto))==(?);
  Expanded_List_VisibleVariables(Machine(Produto))==(?);
  List_VisibleVariables(Machine(Produto))==(?);
  Internal_List_VisibleVariables(Machine(Produto))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Produto))==(btrue);
  Gluing_List_Invariant(Machine(Produto))==(btrue);
  Expanded_List_Invariant(Machine(Produto))==(btrue);
  Abstract_List_Invariant(Machine(Produto))==(btrue);
  Context_List_Invariant(Machine(Produto))==(btrue);
  List_Invariant(Machine(Produto))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Produto))==(btrue);
  Abstract_List_Assertions(Machine(Produto))==(btrue);
  Context_List_Assertions(Machine(Produto))==(btrue);
  List_Assertions(Machine(Produto))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Produto))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Produto))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Produto))==(skip);
  Context_List_Initialisation(Machine(Produto))==(skip);
  List_Initialisation(Machine(Produto))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Produto))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Produto))==(btrue);
  List_Constraints(Machine(Produto))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Produto))==(?);
  List_Operations(Machine(Produto))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Produto))==(?);
  Inherited_List_Constants(Machine(Produto))==(?);
  List_Constants(Machine(Produto))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Produto))==(?);
  Context_List_Defered(Machine(Produto))==(?);
  Context_List_Sets(Machine(Produto))==(?);
  List_Valuable_Sets(Machine(Produto))==(?);
  Inherited_List_Enumerated(Machine(Produto))==(?);
  Inherited_List_Defered(Machine(Produto))==(?);
  Inherited_List_Sets(Machine(Produto))==(?);
  List_Enumerated(Machine(Produto))==(?);
  List_Defered(Machine(Produto))==(?);
  List_Sets(Machine(Produto))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Produto))==(?);
  Expanded_List_HiddenConstants(Machine(Produto))==(?);
  List_HiddenConstants(Machine(Produto))==(?);
  External_List_HiddenConstants(Machine(Produto))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Produto))==(btrue);
  Context_List_Properties(Machine(Produto))==(btrue);
  Inherited_List_Properties(Machine(Produto))==(btrue);
  List_Properties(Machine(Produto))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Produto)) == (? | ? | ? | ? | ? | ? | ? | ? | Produto);
  List_Of_HiddenCst_Ids(Machine(Produto)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Produto)) == (?);
  List_Of_VisibleVar_Ids(Machine(Produto)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Produto)) == (?: ?)
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
