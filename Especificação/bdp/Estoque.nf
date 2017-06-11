Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Estoque))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Estoque))==(Machine(Estoque));
  Level(Machine(Estoque))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Estoque)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Estoque))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Estoque))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Estoque))==(?);
  List_Includes(Machine(Estoque))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Estoque))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Estoque))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Estoque))==(?);
  Context_List_Variables(Machine(Estoque))==(?);
  Abstract_List_Variables(Machine(Estoque))==(?);
  Local_List_Variables(Machine(Estoque))==(?);
  List_Variables(Machine(Estoque))==(?);
  External_List_Variables(Machine(Estoque))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Estoque))==(?);
  Abstract_List_VisibleVariables(Machine(Estoque))==(?);
  External_List_VisibleVariables(Machine(Estoque))==(?);
  Expanded_List_VisibleVariables(Machine(Estoque))==(?);
  List_VisibleVariables(Machine(Estoque))==(?);
  Internal_List_VisibleVariables(Machine(Estoque))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Estoque))==(btrue);
  Gluing_List_Invariant(Machine(Estoque))==(btrue);
  Expanded_List_Invariant(Machine(Estoque))==(btrue);
  Abstract_List_Invariant(Machine(Estoque))==(btrue);
  Context_List_Invariant(Machine(Estoque))==(btrue);
  List_Invariant(Machine(Estoque))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Estoque))==(btrue);
  Abstract_List_Assertions(Machine(Estoque))==(btrue);
  Context_List_Assertions(Machine(Estoque))==(btrue);
  List_Assertions(Machine(Estoque))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Estoque))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Estoque))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Estoque))==(skip);
  Context_List_Initialisation(Machine(Estoque))==(skip);
  List_Initialisation(Machine(Estoque))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Estoque))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Estoque))==(btrue);
  List_Constraints(Machine(Estoque))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Estoque))==(?);
  List_Operations(Machine(Estoque))==(?)
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
  List_Valuable_Constants(Machine(Estoque))==(?);
  Inherited_List_Constants(Machine(Estoque))==(?);
  List_Constants(Machine(Estoque))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Estoque))==(?);
  Context_List_Defered(Machine(Estoque))==(?);
  Context_List_Sets(Machine(Estoque))==(?);
  List_Valuable_Sets(Machine(Estoque))==(?);
  Inherited_List_Enumerated(Machine(Estoque))==(?);
  Inherited_List_Defered(Machine(Estoque))==(?);
  Inherited_List_Sets(Machine(Estoque))==(?);
  List_Enumerated(Machine(Estoque))==(?);
  List_Defered(Machine(Estoque))==(?);
  List_Sets(Machine(Estoque))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Estoque))==(?);
  Expanded_List_HiddenConstants(Machine(Estoque))==(?);
  List_HiddenConstants(Machine(Estoque))==(?);
  External_List_HiddenConstants(Machine(Estoque))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Estoque))==(btrue);
  Context_List_Properties(Machine(Estoque))==(btrue);
  Inherited_List_Properties(Machine(Estoque))==(btrue);
  List_Properties(Machine(Estoque))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Estoque)) == (? | ? | ? | ? | ? | ? | ? | ? | Estoque);
  List_Of_HiddenCst_Ids(Machine(Estoque)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Estoque)) == (?);
  List_Of_VisibleVar_Ids(Machine(Estoque)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Estoque)) == (?: ?)
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
