.class public final Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"


# instance fields
.field private final arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

.field private final content:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

.field private final environment:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

.field private final optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 7

    sget-object v5, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->EMPTY_ARRAY:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 6

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->ENVIRONMENT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v4

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/util/EnumMap;)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->environment:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->content:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-void
.end method


# virtual methods
.method public getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1
    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method

.method public getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1
    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->content:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method

.method public getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->environment:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    return-object v0
.end method

.method public getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1
    .annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
        value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->DEEP:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method
