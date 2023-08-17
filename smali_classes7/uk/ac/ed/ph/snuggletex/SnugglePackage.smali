.class public final Luk/ac/ed/ph/snuggletex/SnugglePackage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;
    }
.end annotation


# static fields
.field public static final interpretableSimpleMathBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;


# instance fields
.field private final builtinCommandMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final builtinEnvironmentMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;",
            ">;"
        }
    .end annotation
.end field

.field private final errorGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/ErrorGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final errorGroupMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Luk/ac/ed/ph/snuggletex/ErrorGroup;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/ErrorCode;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorMessageBundle:Ljava/util/ResourceBundle;

.field private final mathCharacterMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;-><init>()V

    sput-object v0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->interpretableSimpleMathBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->name:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinEnvironmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->mathCharacterMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupList:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic access$000(Luk/ac/ed/ph/snuggletex/SnugglePackage;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->mathCharacterMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 0

    invoke-direct {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->ensureBuiltinMathCharacterCommand(Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p0

    return-object p0
.end method

.method private ensureBuiltinMathCharacterCommand(Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be a previously-defined math character input command"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isInputableTeXName(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ")",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ")",
            "Ljava/util/EnumMap<",
            "Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V
    .locals 4

    const-class v0, Luk/ac/ed/ph/snuggletex/definitions/Globals;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "\\s+#.+$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;->handleLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Exception while reading and parsing math character definitions from resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p2, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load ClassPath resource at  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Luk/ac/ed/ph/snuggletex/SnuggleRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public addCombinerCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMBINER:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object v10, p3

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->isInputableTeXName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTeXName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public addCommandInterpretation(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V
    .locals 2

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object p1

    invoke-interface {p2}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No command defined with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addComplexCommand(Ljava/lang/String;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;[",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v0, 0x1

    new-array v6, v0, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addComplexCommandOneArg(Ljava/lang/String;ZLjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v0, 0x1

    new-array v6, v0, [Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    const/4 v0, 0x0

    aput-object p4, v6, v0

    invoke-static/range {p5 .. p5}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move v3, p2

    move-object v5, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addComplexCommandSameArgMode(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->COMPLEX:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    invoke-static/range {p5 .. p5}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;"
        }
    .end annotation

    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    invoke-static {p4}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    return-object v1
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "[",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;"
        }
    .end annotation

    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    invoke-static {p4}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    return-object v1
.end method

.method public addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;"
        }
    .end annotation

    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    invoke-static/range {p6 .. p6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v6

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    return-object v1
.end method

.method public addEnvironment(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            "[",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;"
        }
    .end annotation

    new-instance v9, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    invoke-static/range {p6 .. p6}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v6

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;-><init>(Ljava/lang/String;ZILjava/util/EnumSet;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v1

    return-object v1
.end method

.method public addEnvironment(Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->isInputableTeXName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinEnvironmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTeXName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public addErrorCode(Luk/ac/ed/ph/snuggletex/ErrorCode;)V
    .locals 3

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Luk/ac/ed/ph/snuggletex/ErrorCode;->getErrorGroup()Luk/ac/ed/ph/snuggletex/ErrorGroup;

    move-result-object v0

    const-string v1, "errorCode.errorGroup"

    invoke-static {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addErrorCodes([Luk/ac/ed/ph/snuggletex/ErrorCode;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addErrorCode(Luk/ac/ed/ph/snuggletex/ErrorCode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addMathCharacterCommand(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getInputCommandName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addMathCharacterCommandAlias(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    return-object p1
.end method

.method public addMathCharacterCommandAlias(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/Globals;->MATH_MODE_ONLY:Ljava/util/EnumSet;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v7

    sget-object v8, Luk/ac/ed/ph/snuggletex/SnugglePackage;->interpretableSimpleMathBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    return-object p1
.end method

.method public addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v5, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    invoke-static {p3}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addSimpleCommand(Ljava/lang/String;Ljava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/semantics/Interpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;",
            ">;[",
            "Luk/ac/ed/ph/snuggletex/semantics/Interpretation;",
            "Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;",
            "Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;",
            ")",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;"
        }
    .end annotation

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    invoke-static {p3}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v1

    return-object v1
.end method

.method public addSimpleMathCommand(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/Globals;->MATH_MODE_ONLY:Ljava/util/EnumSet;

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    return-object p1
.end method

.method public varargs addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 1

    sget-object v0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->interpretableSimpleMathBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;

    invoke-virtual {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    return-object p1
.end method

.method public addSimpleMathCommand(Ljava/lang/String;[Luk/ac/ed/ph/snuggletex/semantics/MathInterpretation;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 12

    new-instance v11, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CommandType;->SIMPLE:Luk/ac/ed/ph/snuggletex/definitions/CommandType;

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/Globals;->MATH_MODE_ONLY:Ljava/util/EnumSet;

    invoke-static {p2}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->makeInterpretationMap([Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)Ljava/util/EnumMap;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;-><init>(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/definitions/CommandType;ZILjava/util/EnumSet;[Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Ljava/util/EnumMap;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Luk/ac/ed/ph/snuggletex/definitions/CombinerTargetMatcher;)V

    invoke-virtual {p0, v11}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->addCommand(Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p1

    return-object p1
.end method

.method public getBuiltinCommandByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    return-object p1
.end method

.method public getBuiltinCommandMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinCommandMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltinEnvironmentByTeXName(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinEnvironmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    return-object p1
.end method

.method public getBuiltinEnvironmentMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->builtinEnvironmentMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCodes(Luk/ac/ed/ph/snuggletex/ErrorGroup;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/ErrorGroup;",
            ")",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/ErrorCode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getErrorGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/ErrorGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorGroupList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessageBundle()Ljava/util/ResourceBundle;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorMessageBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getMathCharacter(I)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->mathCharacterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    return-object p1
.end method

.method public getMathCharacterMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->mathCharacterMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public loadMathCharacterAliases(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage$5;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$5;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public loadMathCharacterBigLimitTargets(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;

    invoke-direct {v0}, Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;-><init>()V

    new-instance v1, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;

    invoke-direct {v1, p0, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$6;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;Luk/ac/ed/ph/snuggletex/semantics/MathBigLimitOwnerInterpretation;)V

    invoke-direct {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public loadMathCharacterBrackets(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage$4;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$4;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public loadMathCharacterDefinitions(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage$2;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$2;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public loadMathCharacterNegations(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage$3;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$3;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public loadMathFunctionDefinitions(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Luk/ac/ed/ph/snuggletex/SnugglePackage$1;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/SnugglePackage$1;-><init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->readResourceData(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;)V

    return-void
.end method

.method public setErrorMessageBundle(Ljava/util/ResourceBundle;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage;->errorMessageBundle:Ljava/util/ResourceBundle;

    return-void
.end method
