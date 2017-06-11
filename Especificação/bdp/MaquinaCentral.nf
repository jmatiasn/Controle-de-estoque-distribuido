Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(MaquinaCentral))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(MaquinaCentral))==(Machine(MaquinaCentral));
  Level(Machine(MaquinaCentral))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(MaquinaCentral)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(MaquinaCentral))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(MaquinaCentral))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(MaquinaCentral))==(?);
  List_Includes(Machine(MaquinaCentral))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(MaquinaCentral))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(MaquinaCentral))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(MaquinaCentral))==(?);
  Context_List_Variables(Machine(MaquinaCentral))==(?);
  Abstract_List_Variables(Machine(MaquinaCentral))==(?);
  Local_List_Variables(Machine(MaquinaCentral))==(?);
  List_Variables(Machine(MaquinaCentral))==(?);
  External_List_Variables(Machine(MaquinaCentral))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(MaquinaCentral))==(?);
  Abstract_List_VisibleVariables(Machine(MaquinaCentral))==(?);
  External_List_VisibleVariables(Machine(MaquinaCentral))==(?);
  Expanded_List_VisibleVariables(Machine(MaquinaCentral))==(?);
  List_VisibleVariables(Machine(MaquinaCentral))==(?);
  Internal_List_VisibleVariables(Machine(MaquinaCentral))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(MaquinaCentral))==(btrue);
  Gluing_List_Invariant(Machine(MaquinaCentral))==(btrue);
  Expanded_List_Invariant(Machine(MaquinaCentral))==(btrue);
  Abstract_List_Invariant(Machine(MaquinaCentral))==(btrue);
  Context_List_Invariant(Machine(MaquinaCentral))==(btrue);
  List_Invariant(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(MaquinaCentral))==(btrue);
  Abstract_List_Assertions(Machine(MaquinaCentral))==(btrue);
  Context_List_Assertions(Machine(MaquinaCentral))==(btrue);
  List_Assertions(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(MaquinaCentral))==(skip);
  Context_List_Initialisation(Machine(MaquinaCentral))==(skip);
  List_Initialisation(Machine(MaquinaCentral))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(MaquinaCentral))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(MaquinaCentral))==(btrue);
  List_Constraints(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(MaquinaCentral))==(?);
  List_Operations(Machine(MaquinaCentral))==(?)
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
  List_Valuable_Constants(Machine(MaquinaCentral))==(?);
  Inherited_List_Constants(Machine(MaquinaCentral))==(?);
  List_Constants(Machine(MaquinaCentral))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(MaquinaCentral))==(?);
  Context_List_Defered(Machine(MaquinaCentral))==(?);
  Context_List_Sets(Machine(MaquinaCentral))==(?);
  List_Valuable_Sets(Machine(MaquinaCentral))==(?);
  Inherited_List_Enumerated(Machine(MaquinaCentral))==(?);
  Inherited_List_Defered(Machine(MaquinaCentral))==(?);
  Inherited_List_Sets(Machine(MaquinaCentral))==(?);
  List_Enumerated(Machine(MaquinaCentral))==(?);
  List_Defered(Machine(MaquinaCentral))==(?);
  List_Sets(Machine(MaquinaCentral))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(MaquinaCentral))==(?);
  Expanded_List_HiddenConstants(Machine(MaquinaCentral))==(?);
  List_HiddenConstants(Machine(MaquinaCentral))==(?);
  External_List_HiddenConstants(Machine(MaquinaCentral))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(MaquinaCentral))==(btrue);
  Context_List_Properties(Machine(MaquinaCentral))==(btrue);
  Inherited_List_Properties(Machine(MaquinaCentral))==(btrue);
  List_Properties(Machine(MaquinaCentral))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(MaquinaCentral)) == (? | ? | ? | ? | ? | ? | ? | ? | MaquinaCentral);
  List_Of_HiddenCst_Ids(Machine(MaquinaCentral)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(MaquinaCentral)) == (?);
  List_Of_VisibleVar_Ids(Machine(MaquinaCentral)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(MaquinaCentral)) == (?: ?)
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
