.class public final Luk/ac/ed/ph/snuggletex/tokens/CommandToken;
.super Luk/ac/ed/ph/snuggletex/tokens/FlowToken;
.source "SourceFile"


# instance fields
.field private final arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

.field private final combinerTarget:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

.field private final command:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

.field private final optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method private constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 6

    sget-object v2, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->COMMAND:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v4

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/tokens/TokenType;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;Ljava/util/EnumMap;)V

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->command:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->combinerTarget:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object p5, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    iput-object p6, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;-><init>(Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method


# virtual methods
.method public getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->arguments:[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method

.method public getCombinerTarget()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->combinerTarget:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method

.method public getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->command:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    return-object v0
.end method

.method public getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->optionalArgument:Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    return-object v0
.end method
