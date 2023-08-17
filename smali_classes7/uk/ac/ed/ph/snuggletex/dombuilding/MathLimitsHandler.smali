.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MathLimitsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 5

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getOutputContext()Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    move-result-object v2

    sget-object v3, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    new-array v2, v4, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BIG_LIMIT_OWNER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v0

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUB_OR_MUNDER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_1

    const-string v0, "munder"

    goto :goto_1

    :cond_1
    const-string v0, "msub"

    goto :goto_1

    :cond_2
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUP_OR_MOVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v4, :cond_3

    const-string v0, "mover"

    goto :goto_1

    :cond_3
    const-string v0, "msup"

    goto :goto_1

    :cond_4
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->CMD_MSUBSUP_OR_MUNDEROVER:Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v4, :cond_5

    const-string v0, "munderover"

    goto :goto_1

    :cond_5
    const-string v0, "msubsup"

    :goto_1
    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    array-length v0, p3

    :goto_2
    if-ge v1, v0, :cond_6

    aget-object v2, p3, v1

    invoke-virtual {p1, p2, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected limit command "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
