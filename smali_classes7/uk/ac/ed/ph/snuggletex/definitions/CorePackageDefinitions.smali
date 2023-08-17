.class public final Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_MATH_CHARACTER_DEFS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/all-math-characters.txt"

.field public static final CMD_CHAR_BACKSLASH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_FRAC:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_LEFT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_MROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_MSUBSUP_OR_MUNDEROVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_MSUB_OR_MUNDER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_MSUP_OR_MOVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_NEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_NEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_OVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_PAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_RENEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_RENEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_RIGHT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_VERB:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_VERBSTAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CMD_XML_ATTR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field public static final CORE_ERROR_MESSAGES_PROPERTIES_BASENAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/core-error-messages"

.field public static final CORE_MATH_CHARACTER_DEFS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/core-math-characters.txt"

.field public static final CORE_PACKAGE_NAME:Ljava/lang/String; = "Core"

.field public static final ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_DISPLAYMATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_ENUMERATE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_ITEMIZE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_MATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_STYLE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final ENV_VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field public static final MATH_CHARACTER_ALIASES_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/math-character-aliases.txt"

.field public static final MATH_CHARACTER_BIG_LIMITS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/math-character-big-limits.txt"

.field public static final MATH_CHARACTER_BRACKETS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/math-character-brackets.txt"

.field public static final MATH_CHARACTER_NEGATIONS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/math-character-negations.txt"

.field public static final MATH_FUNCTION_DEFINITIONS_RESOURCE_NAME:Ljava/lang/String; = "uk/ac/ed/ph/snuggletex/math-function-definitions.txt"

.field private static final corePackage:Luk/ac/ed/ph/snuggletex/SnugglePackage;


# direct methods
.method public static constructor <clinit>()V
    .locals 47

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v1, "Core"

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;-><init>(Ljava/lang/String;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->corePackage:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-static {}, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->values()[Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addErrorCodes([Luk/ac/ed/ph/snuggletex/ErrorCode;)V

    :try_start_0
    const-string v1, "uk/ac/ed/ph/snuggletex/core-error-messages"

    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->setErrorMessageBundle(Ljava/util/ResourceBundle;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v10, Luk/ac/ed/ph/snuggletex/dombuilding/DoNothingHandler;

    invoke-direct {v10}, Luk/ac/ed/ph/snuggletex/dombuilding/DoNothingHandler;-><init>()V

    const-string v1, "uk/ac/ed/ph/snuggletex/all-math-characters.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterDefinitions(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/core-math-characters.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterDefinitions(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/math-character-negations.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterNegations(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/math-character-aliases.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterAliases(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/math-character-big-limits.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterBigLimitTargets(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/math-character-brackets.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterBrackets(Ljava/lang/String;)V

    const-string v1, "uk/ac/ed/ph/snuggletex/math-function-definitions.txt"

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathFunctionDefinitions(Ljava/lang/String;)V

    sget-object v11, Luk/ac/ed/ph/snuggletex/definitions/Globals;->ALL_MODES:Ljava/util/EnumSet;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/LineBreakHandler;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/dombuilding/LineBreakHandler;-><init>()V

    const/4 v2, 0x0

    const-string v3, "\\"

    invoke-virtual {v0, v3, v11, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_CHAR_BACKSLASH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "$"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    sget-object v12, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->ALLOW_INLINE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "%"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "#"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "&"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "_"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x2

    new-array v4, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;

    const-string v13, "{"

    invoke-direct {v1, v13}, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v4, v2

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    const-string v2, "lbrace"

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->OPENER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;Z)V

    const/4 v2, 0x1

    aput-object v1, v4, v2

    new-instance v5, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    invoke-direct {v1, v13}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    new-instance v2, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    invoke-direct {v2}, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;-><init>()V

    invoke-direct {v5, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;-><init>(Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)V

    const/4 v6, 0x0

    const-string v2, "{"

    move-object v1, v0

    move-object v3, v11

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x2

    new-array v4, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;

    const-string v14, "}"

    invoke-direct {v1, v14}, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v4, v2

    new-instance v1, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    const-string v2, "rbrace"

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v2

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->CLOSER:Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;Z)V

    const/4 v2, 0x1

    aput-object v1, v4, v2

    new-instance v5, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    invoke-direct {v1, v14}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    new-instance v2, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    invoke-direct {v2}, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;-><init>()V

    invoke-direct {v5, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;-><init>(Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)V

    const-string v2, "}"

    move-object v1, v0

    move-object v3, v11

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const-string v2, "\u2009"

    const-string v3, "0.167em"

    invoke-direct {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v15, Luk/ac/ed/ph/snuggletex/definitions/Globals;->MATH_MODE_ONLY:Ljava/util/EnumSet;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const/4 v2, 0x0

    const-string v3, "0.222em"

    invoke-direct {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v0, v3, v15, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const-string v3, "0.278em"

    invoke-direct {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ";"

    invoke-virtual {v0, v3, v15, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const-string v3, "-0.167em"

    invoke-direct {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "!"

    invoke-virtual {v0, v3, v15, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v9, "\u00a0"

    invoke-direct {v1, v9}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v0, v2, v11, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/Globals;->TEXT_MODE_ONLY:Ljava/util/EnumSet;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->ACCENT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V

    const-string v2, "\'"

    move-object v1, v0

    move-object v5, v8

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->GRAVE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V

    const-string v2, "`"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->CIRCUMFLEX:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-direct {v6, v7}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V

    const-string v2, "^"

    move-object/from16 v16, v14

    move-object v14, v7

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->TILDE:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-direct {v6, v7}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V

    const-string v2, "~"

    move-object/from16 v17, v13

    move-object v13, v7

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/AccentMaps;->UMLAUT:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V

    const-string v2, "\""

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x0

    const-string v2, "par"

    invoke-virtual {v0, v2, v8, v1, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/LineBreakHandler;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/dombuilding/LineBreakHandler;-><init>()V

    const/4 v2, 0x0

    const-string v3, "newline"

    invoke-virtual {v0, v3, v11, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v7, Luk/ac/ed/ph/snuggletex/definitions/Globals;->PARA_MODE_ONLY:Ljava/util/EnumSet;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;-><init>(Z)V

    const/4 v2, 0x0

    const-string v3, "verb"

    invoke-virtual {v0, v3, v7, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_VERB:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;-><init>(Z)V

    const/4 v2, 0x0

    const-string v3, "verb*"

    invoke-virtual {v0, v3, v7, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_VERBSTAR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;

    invoke-direct {v1}, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;-><init>()V

    const-string v3, "item"

    invoke-virtual {v0, v3, v7, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    sget-object v18, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/EnsureMathHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/EnsureMathHandler;-><init>()V

    const/16 v19, 0x0

    const-string v2, "ensuremath"

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v5, v18

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v19, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/LiteralHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/LiteralHandler;-><init>()V

    const/4 v7, 0x0

    const-string v2, "literal"

    move-object v4, v8

    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/ParagraphHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/ParagraphHandler;-><init>()V

    sget-object v21, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    const-string v2, "<paragraph>"

    move-object v5, v8

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v22, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;

    invoke-direct/range {v22 .. v22}, Luk/ac/ed/ph/snuggletex/dombuilding/ListEnvironmentHandler;-><init>()V

    sget-object v23, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const-string v2, "<list item>"

    move-object v1, v0

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    move-object/from16 v7, v22

    move-object/from16 v24, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LIST_ITEM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "<tr>"

    move-object v1, v0

    move-object v5, v11

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_ROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "<td>"

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_TABLE_COLUMN:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v25, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->LR:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v8, "h2"

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "section"

    move-object v1, v0

    move-object/from16 v4, v20

    move-object/from16 v5, v25

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "section*"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v8, "h3"

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "subsection"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "subsection*"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v8, "h4"

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "subsubsection"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "subsubsection*"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v26, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->EM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const/4 v6, 0x0

    const-string v2, "em"

    move-object v3, v11

    move-object/from16 v4, v26

    move-object v5, v10

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v27, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->BF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "bf"

    move-object/from16 v4, v27

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v28, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->RM:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "rm"

    move-object/from16 v4, v28

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v29, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->IT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "it"

    move-object/from16 v4, v29

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v30, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->TT:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "tt"

    move-object/from16 v4, v30

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v31, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SC:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "sc"

    move-object/from16 v4, v31

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v32, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "sl"

    move-object/from16 v4, v32

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v33, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SF:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "sf"

    move-object/from16 v4, v33

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v2, "textrm"

    move-object v4, v11

    move-object/from16 v5, v25

    move-object/from16 v6, v28

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "textsf"

    move-object/from16 v6, v33

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "textit"

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "textsl"

    move-object/from16 v6, v32

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "textsc"

    move-object/from16 v6, v31

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "textbf"

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "texttt"

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "emph"

    move-object/from16 v6, v26

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v34, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->TINY:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const/4 v6, 0x0

    const-string v2, "tiny"

    move-object/from16 v3, v24

    move-object/from16 v4, v34

    move-object v5, v10

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v35, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SCRIPTSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "scriptsize"

    move-object/from16 v4, v35

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v36, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->FOOTNOTESIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "footnotesize"

    move-object/from16 v4, v36

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v37, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->SMALL:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "small"

    move-object/from16 v4, v37

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v38, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->NORMALSIZE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "normalsize"

    move-object/from16 v4, v38

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v39, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "large"

    move-object/from16 v4, v39

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v40, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "Large"

    move-object/from16 v4, v40

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v41, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->LARGE_3:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "LARGE"

    move-object/from16 v4, v41

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v42, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->HUGE:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "huge"

    move-object/from16 v4, v42

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v43, Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;->HUGE_2:Luk/ac/ed/ph/snuggletex/semantics/StyleDeclarationInterpretation;

    const-string v2, "Huge"

    move-object/from16 v4, v43

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "\u00e6"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "ae"

    move-object/from16 v8, v24

    invoke-virtual {v0, v2, v8, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "\u0153"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "oe"

    invoke-virtual {v0, v2, v8, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;

    const-string v2, "\u2020"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "dag"

    invoke-virtual {v0, v2, v8, v1, v12}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v4, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;

    const-string v1, "\u2026"

    invoke-direct {v4, v1}, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;-><init>(Ljava/lang/String;)V

    new-instance v5, Luk/ac/ed/ph/snuggletex/dombuilding/TextSafeInterpretableMathIdentifierHandler;

    invoke-direct {v5}, Luk/ac/ed/ph/snuggletex/dombuilding/TextSafeInterpretableMathIdentifierHandler;-><init>()V

    const-string v2, "ldots"

    move-object v1, v0

    move-object v3, v11

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v4, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;

    const-string v1, "\u00a3"

    invoke-direct {v4, v1}, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;-><init>(Ljava/lang/String;)V

    new-instance v5, Luk/ac/ed/ph/snuggletex/dombuilding/TextSafeInterpretableMathIdentifierHandler;

    invoke-direct {v5}, Luk/ac/ed/ph/snuggletex/dombuilding/TextSafeInterpretableMathIdentifierHandler;-><init>()V

    const-string v2, "pounds"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x1

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;

    new-instance v2, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;

    const-string v3, "\u2061"

    invoke-direct {v2, v3}, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "af"

    invoke-virtual {v0, v2, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x1

    new-array v1, v1, [Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;

    new-instance v2, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;

    const-string v3, "\u2062"

    invoke-direct {v2, v3}, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "itimes"

    invoke-virtual {v0, v2, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v24, Luk/ac/ed/ph/snuggletex/dombuilding/MathLimitsHandler;

    invoke-direct/range {v24 .. v24}, Luk/ac/ed/ph/snuggletex/dombuilding/MathLimitsHandler;-><init>()V

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MrowHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/MrowHandler;-><init>()V

    const-string v2, "<mrow>"

    move-object v1, v0

    move-object v5, v15

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MROW:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x2

    const-string v2, "<msubormunder>"

    move-object v1, v0

    move-object/from16 v6, v24

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUB_OR_MUNDER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "<msupormover>"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUP_OR_MOVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x3

    const-string v2, "<msubsupormunderover>"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUBSUP_OR_MUNDEROVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x2

    const/4 v6, 0x0

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;

    const-string v5, "mover"

    invoke-direct {v7, v5}, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    const-string v2, "stackrel"

    move-object v1, v0

    move-object/from16 v44, v5

    move-object v5, v15

    move-object/from16 v45, v8

    move-object/from16 v8, v24

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;

    move-object/from16 v8, v44

    invoke-direct {v7, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "overset"

    move-object/from16 v44, v10

    move-object v10, v8

    move-object/from16 v8, v24

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;

    const-string v8, "munder"

    invoke-direct {v7, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/MathUnderOrOverHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "underset"

    move-object/from16 v46, v8

    move-object/from16 v8, v24

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x1

    const/4 v7, 0x0

    const-string v2, "mathrm"

    move-object/from16 v6, v28

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "mathsf"

    move-object/from16 v6, v33

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "mathit"

    move-object/from16 v6, v29

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "mathbf"

    move-object/from16 v6, v27

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "mathtt"

    move-object/from16 v6, v30

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;

    sget-object v8, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->SCRIPT:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;)V

    const-string v2, "mathcal"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;

    invoke-direct {v6, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;)V

    const-string v2, "mathsc"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->DOUBLE_STRUCK:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;)V

    const-string v2, "mathbb"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMaps;->FRAKTUR:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;)V

    const-string v2, "mathfrak"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v4, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions$1;

    invoke-direct {v4}, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions$1;-><init>()V

    new-instance v5, Luk/ac/ed/ph/snuggletex/dombuilding/MathNotHandler;

    invoke-direct {v5}, Luk/ac/ed/ph/snuggletex/dombuilding/MathNotHandler;-><init>()V

    const/4 v6, 0x0

    const-string v2, "not"

    move-object v3, v15

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCombinerCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler$BracketCombinerTargetMatcher;

    invoke-direct {v7}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler$BracketCombinerTargetMatcher;-><init>()V

    const/4 v5, 0x0

    const-string v2, "left"

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCombinerCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_LEFT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "right"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCombinerCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RIGHT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathRootHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/MathRootHandler;-><init>()V

    const/4 v7, 0x0

    const-string v2, "sqrt"

    move-object v1, v0

    move-object v5, v15

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathComplexCommandHandler;

    const-string v1, "mfrac"

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/MathComplexCommandHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "frac"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_FRAC:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x0

    const-string v2, "over"

    invoke-virtual {v0, v2, v15, v1, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_OVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const-string v2, "1em"

    invoke-direct {v1, v9, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "quad"

    invoke-virtual {v0, v3, v11, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;

    const-string v2, "\u00a0\u00a0"

    const-string v3, "2em"

    invoke-direct {v1, v2, v3}, Luk/ac/ed/ph/snuggletex/dombuilding/SpaceHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "qquad"

    invoke-virtual {v0, v3, v11, v1, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;-><init>()V

    const-string v2, "hspace"

    move-object v1, v0

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/HSpaceHandler;-><init>()V

    const-string v2, "hspace*"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x302

    invoke-direct {v6, v14, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "hat"

    move-object v1, v0

    move-object v5, v15

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x304

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "bar"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x2192

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "vec"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x307

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "dot"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x308

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "ddot"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x7e

    invoke-direct {v6, v13, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "tilde"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x302

    invoke-direct {v6, v14, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "widehat"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x2dc

    invoke-direct {v6, v13, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "widetilde"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0xaf

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "overline"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const v1, 0xfe37

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "overbrace"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const v1, 0xfe38

    const/4 v2, 0x0

    move-object/from16 v8, v46

    invoke-direct {v6, v2, v1, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "underbrace"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x20d7

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "overrightarrow"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v1, 0x20d6

    const/4 v2, 0x0

    invoke-direct {v6, v2, v1, v10}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    const-string v2, "overleftarrow"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v6, 0x0

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;

    new-instance v1, Luk/ac/ed/ph/snuggletex/dombuilding/TextClassHandler;

    const-string v2, "underline"

    invoke-direct {v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/TextClassHandler;-><init>(Ljava/lang/String;)V

    new-instance v2, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;

    const/16 v5, 0xaf

    const/4 v9, 0x0

    invoke-direct {v2, v9, v5, v8}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    invoke-direct {v7, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;-><init>(Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)V

    const/4 v8, 0x0

    const-string v2, "underline"

    move-object v1, v0

    move-object v5, v11

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/BoxHandler;

    const-string v1, "mbox"

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/BoxHandler;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v2, "mbox"

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v5, v25

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/BoxHandler;

    const-string v1, "fbox"

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/BoxHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "fbox"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v9, Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;

    invoke-direct {v9}, Luk/ac/ed/ph/snuggletex/dombuilding/TabularHandler;-><init>()V

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->IGNORE:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    const-string v2, "hline"

    move-object v3, v11

    move-object/from16 v4, v23

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_HLINE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v2, "newcommand"

    move-object v1, v0

    move-object v5, v11

    move-object/from16 v6, v44

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_NEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "renewcommand"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWCOMMAND:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x2

    const-string v2, "newenvironment"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_NEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const-string v2, "renewenvironment"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_RENEWENVIRONMENT:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v1, 0x2

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v1, 0x0

    aput-object v25, v6, v1

    const/4 v1, 0x1

    aput-object v19, v6, v1

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/HrefHandler;

    invoke-direct {v7}, Luk/ac/ed/ph/snuggletex/dombuilding/HrefHandler;-><init>()V

    const-string v2, "href"

    move-object v1, v0

    move-object/from16 v5, v45

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AnchorHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/AnchorHandler;-><init>()V

    const-string v2, "anchor"

    move-object/from16 v4, v45

    move-object/from16 v5, v19

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/AnchorHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/AnchorHandler;-><init>()V

    const-string v2, "anchor*"

    move-object/from16 v5, v25

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/UnitsHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/UnitsHandler;-><init>()V

    const/4 v7, 0x0

    const-string v2, "units"

    move-object v4, v15

    move-object/from16 v5, v18

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x3

    const/4 v1, 0x3

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v1, 0x0

    aput-object v25, v6, v1

    const/4 v1, 0x1

    aput-object v25, v6, v1

    const/4 v1, 0x2

    aput-object v25, v6, v1

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/XMLAttrHandler;

    invoke-direct {v7}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLAttrHandler;-><init>()V

    const-string v2, "xmlAttr"

    move-object v1, v0

    move-object v5, v11

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_XML_ATTR:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x1

    const/4 v1, 0x4

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v1, 0x0

    aput-object v25, v6, v1

    const/4 v1, 0x1

    aput-object v25, v6, v1

    const/4 v1, 0x2

    aput-object v25, v6, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v6, v1

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/XMLBlockElementHandler;

    invoke-direct {v7}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLBlockElementHandler;-><init>()V

    const-string v2, "xmlBlockElement"

    move-object v1, v0

    move-object/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v1, 0x4

    new-array v6, v1, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v1, 0x0

    aput-object v25, v6, v1

    const/4 v1, 0x1

    aput-object v25, v6, v1

    const/4 v1, 0x2

    aput-object v25, v6, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v6, v1

    new-instance v7, Luk/ac/ed/ph/snuggletex/dombuilding/XMLInlineElementHandler;

    invoke-direct {v7}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLInlineElementHandler;-><init>()V

    const-string v2, "xmlInlineElement"

    move-object v1, v0

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x0

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;-><init>(I)V

    const-string v2, "xmlName"

    move-object v1, v0

    move-object v4, v11

    move-object/from16 v5, v19

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;-><init>(I)V

    const-string v2, "xmlName*"

    move-object v1, v0

    move-object/from16 v5, v25

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;-><init>(I)V

    const-string v2, "xmlId"

    move-object v1, v0

    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLNameOrIdHandler;-><init>(I)V

    const-string v2, "xmlId*"

    move-object v1, v0

    move-object/from16 v5, v25

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;-><init>()V

    const-string v2, "xmlUnparse"

    move-object/from16 v5, v45

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/InsertUnicodeHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/InsertUnicodeHandler;-><init>()V

    const-string v2, "ux"

    move-object v4, v11

    move-object/from16 v5, v25

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/GetVarHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/GetVarHandler;-><init>()V

    const-string v2, "getvar"

    move-object v5, v11

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v4, 0x2

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SetVarHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/SetVarHandler;-><init>()V

    const-string v2, "setvar"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    const/4 v5, 0x0

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathEnvironmentHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/MathEnvironmentHandler;-><init>()V

    const-string v2, "math"

    move-object/from16 v3, v45

    move-object/from16 v4, v18

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_MATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MathEnvironmentHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/MathEnvironmentHandler;-><init>()V

    const-string v2, "displaymath"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_DISPLAYMATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/VerbatimHandler;-><init>(Z)V

    const-string v2, "verbatim"

    move-object v1, v0

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_VERBATIM:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v4, 0x0

    const/4 v1, 0x2

    new-array v5, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    sget-object v8, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->LIST:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v1, 0x0

    aput-object v8, v5, v1

    const/4 v1, 0x1

    aput-object v23, v5, v1

    const-string v2, "itemize"

    move-object v1, v0

    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_ITEMIZE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v1, 0x2

    new-array v5, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v1, 0x0

    aput-object v8, v5, v1

    const/4 v1, 0x1

    aput-object v23, v5, v1

    const-string v2, "enumerate"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_ENUMERATE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v10, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->PARAGRAPH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v1, 0x2

    new-array v7, v1, [Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v1, 0x0

    aput-object v23, v7, v1

    sget-object v13, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->TABULAR:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    const/4 v1, 0x1

    aput-object v13, v7, v1

    const-string v2, "tabular"

    move-object v1, v0

    move-object/from16 v5, v20

    move-object v6, v10

    move-object v8, v9

    move-object/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v8, Luk/ac/ed/ph/snuggletex/dombuilding/ArrayHandler;

    invoke-direct {v8}, Luk/ac/ed/ph/snuggletex/dombuilding/ArrayHandler;-><init>()V

    const/4 v9, 0x0

    const-string v2, "array"

    move-object v5, v15

    move-object/from16 v6, v18

    move-object v7, v13

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    const/4 v1, 0x2

    const-string v2, ""

    move-object/from16 v8, v17

    invoke-direct {v6, v1, v8, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v2, "cases"

    move-object v1, v0

    move-object v3, v15

    move-object/from16 v4, v18

    move-object v5, v13

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;-><init>()V

    const-string v2, "eqnarray"

    move-object/from16 v3, v20

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;-><init>()V

    const-string v2, "eqnarray*"

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>()V

    const/4 v7, 0x0

    const-string v2, "matrix"

    move-object v3, v15

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    const-string v1, "("

    const-string v2, ")"

    invoke-direct {v6, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pmatrix"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    const-string v1, "["

    const-string v2, "]"

    invoke-direct {v6, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bmatrix"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    move-object/from16 v1, v16

    invoke-direct {v6, v8, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Bmatrix"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    const-string v1, "|"

    const-string v2, "|"

    invoke-direct {v6, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "vmatrix"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;

    const-string v1, "\u2225"

    const-string v2, "\u2225"

    invoke-direct {v6, v1, v2}, Luk/ac/ed/ph/snuggletex/dombuilding/MatrixHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Vmatrix"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v5, 0x0

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v1, "blockquote"

    invoke-direct {v6, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;)V

    const-string v2, "quote"

    move-object v1, v0

    move-object/from16 v3, v20

    move-object v4, v10

    move-object/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v8, "div"

    const-string v1, "center"

    invoke-direct {v6, v8, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "center"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v1, "flushleft"

    invoke-direct {v6, v8, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "flushleft"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;

    const-string v1, "flushright"

    invoke-direct {v6, v8, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "flushright"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v4, 0x0

    const-string v2, "em"

    move-object/from16 v3, v45

    move-object/from16 v5, v26

    move-object/from16 v6, v44

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "bf"

    move-object/from16 v5, v27

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "rm"

    move-object/from16 v5, v28

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "it"

    move-object/from16 v5, v29

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "tt"

    move-object/from16 v5, v30

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "sc"

    move-object/from16 v5, v31

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "sl"

    move-object/from16 v5, v32

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "sf"

    move-object/from16 v5, v33

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "tiny"

    move-object/from16 v5, v34

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "scriptsize"

    move-object/from16 v5, v35

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "footnotesize"

    move-object/from16 v5, v36

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "small"

    move-object/from16 v5, v37

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "normalsize"

    move-object/from16 v5, v38

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "large"

    move-object/from16 v5, v39

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "Large"

    move-object/from16 v5, v40

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "LARGE"

    move-object/from16 v5, v41

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "huge"

    move-object/from16 v5, v42

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const-string v2, "Huge"

    move-object/from16 v5, v43

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v7, 0x0

    new-instance v8, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;

    invoke-direct {v8}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;-><init>()V

    const-string v2, "<mfenced>"

    move-object v5, v15

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_BRACKETED:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Luk/ac/ed/ph/snuggletex/dombuilding/StyleHandler;

    invoke-direct {v6}, Luk/ac/ed/ph/snuggletex/dombuilding/StyleHandler;-><init>()V

    const-string v2, "<style>"

    move-object v1, v0

    move-object v3, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    sput-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_STYLE:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Luk/ac/ed/ph/snuggletex/dombuilding/XMLBlockElementHandler;

    invoke-direct {v8}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLBlockElementHandler;-><init>()V

    const-string v2, "xmlBlockElement"

    move-object v1, v0

    move-object v5, v11

    move-object/from16 v9, v21

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    new-instance v8, Luk/ac/ed/ph/snuggletex/dombuilding/XMLInlineElementHandler;

    invoke-direct {v8}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLInlineElementHandler;-><init>()V

    const-string v2, "xmlInlineElement"

    move-object v9, v12

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v8, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;

    invoke-direct {v8}, Luk/ac/ed/ph/snuggletex/dombuilding/XMLUnparseHandler;-><init>()V

    const-string v2, "xmlUnparse"

    move-object/from16 v5, v45

    invoke-virtual/range {v1 .. v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    invoke-direct {v1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPackage()Luk/ac/ed/ph/snuggletex/SnugglePackage;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->corePackage:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    return-object v0
.end method
