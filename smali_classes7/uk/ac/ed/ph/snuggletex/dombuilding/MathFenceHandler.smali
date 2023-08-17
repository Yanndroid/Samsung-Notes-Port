.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler$BracketCombinerTargetMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBracket(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    const/4 v2, 0x1

    new-array v2, v2, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_BRACKET:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object p1

    check-cast p1, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;->getMfencedAttributeCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getChars()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_1

    const-string v1, ""

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v0, "Bracket combiner was not of the expected form"

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method private makeBracketed(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mrow"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    if-eqz p4, :cond_0

    invoke-virtual {p1, p2, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {p1, p2, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    invoke-virtual {p1, p2, p5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_2
    return-void
.end method

.method private makeFenceGroup(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Ljava/util/List;)V

    return-void
.end method

.method private makeMfenced(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "mfenced"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-static {p4}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "open"

    invoke-interface {p2, v0, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p5}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string p5, "close"

    invoke-interface {p2, p5, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {p5}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacterCodePoint()I

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p4}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->makeFenceGroup(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Ljava/util/List;)V

    invoke-interface {p4}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-direct {p0, p1, p2, p4}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->makeFenceGroup(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 6

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->getBracket(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x1

    aget-object p3, p3, v0

    invoke-direct {p0, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->getBracket(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->makeMfenced(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/dombuilding/MathFenceHandler;->makeBracketed(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
