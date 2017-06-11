Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Tipo))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Tipo))==(Machine(Tipo));
  Level(Machine(Tipo))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Tipo)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Tipo))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Tipo))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Tipo))==(?);
  List_Includes(Machine(Tipo))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Tipo))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Tipo))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Tipo))==(?);
  Context_List_Variables(Machine(Tipo))==(?);
  Abstract_List_Variables(Machine(Tipo))==(?);
  Local_List_Variables(Machine(Tipo))==(?);
  List_Variables(Machine(Tipo))==(?);
  External_List_Variables(Machine(Tipo))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Tipo))==(?);
  Abstract_List_VisibleVariables(Machine(Tipo))==(?);
  External_List_VisibleVariables(Machine(Tipo))==(?);
  Expanded_List_VisibleVariables(Machine(Tipo))==(?);
  List_VisibleVariables(Machine(Tipo))==(?);
  Internal_List_VisibleVariables(Machine(Tipo))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Tipo))==(btrue);
  Gluing_List_Invariant(Machine(Tipo))==(btrue);
  Expanded_List_Invariant(Machine(Tipo))==(btrue);
  Abstract_List_Invariant(Machine(Tipo))==(btrue);
  Context_List_Invariant(Machine(Tipo))==(btrue);
  List_Invariant(Machine(Tipo))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Tipo))==(btrue);
  Abstract_List_Assertions(Machine(Tipo))==(btrue);
  Context_List_Assertions(Machine(Tipo))==(btrue);
  List_Assertions(Machine(Tipo))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Tipo))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Tipo))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Tipo))==(skip);
  Context_List_Initialisation(Machine(Tipo))==(skip);
  List_Initialisation(Machine(Tipo))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Tipo))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Tipo))==(btrue);
  List_Constraints(Machine(Tipo))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Tipo))==(?);
  List_Operations(Machine(Tipo))==(?)
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
  List_Valuable_Constants(Machine(Tipo))==(?);
  Inherited_List_Constants(Machine(Tipo))==(?);
  List_Constants(Machine(Tipo))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Tipo))==(?);
  Context_List_Defered(Machine(Tipo))==(?);
  Context_List_Sets(Machine(Tipo))==(?);
  List_Valuable_Sets(Machine(Tipo))==(?);
  Inherited_List_Enumerated(Machine(Tipo))==(?);
  Inherited_List_Defered(Machine(Tipo))==(?);
  Inherited_List_Sets(Machine(Tipo))==(?);
  List_Enumerated(Machine(Tipo))==(?);
  List_Defered(Machine(Tipo))==(?);
  List_Sets(Machine(Tipo))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Tipo))==(?);
  Expanded_List_HiddenConstants(Machine(Tipo))==(?);
  List_HiddenConstants(Machine(Tipo))==(?);
  External_List_HiddenConstants(Machine(Tipo))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Tipo))==(btrue);
  Context_List_Properties(Machine(Tipo))==(btrue);
  Inherited_List_Properties(Machine(Tipo))==(btrue);
  List_Properties(Machine(Tipo))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Tipo)) == (? | ? | ? | ? | ? | ? | ? | ? | Tipo);
  List_Of_HiddenCst_Ids(Machine(Tipo)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Tipo)) == (?);
  List_Of_VisibleVar_Ids(Machine(Tipo)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Tipo)) == (?: ?)
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
