.class public final Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# instance fields
.field private final accentMap:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

.field private final combiningCharacter:C

.field private final mathMLElementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;-><init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/AccentMap;CLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->accentMap:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    iput-char p2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->combiningCharacter:C

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->mathMLElementName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->mathMLElementName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->handleCommandMathMode(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    goto :goto_0

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "Unexpected logic branch - unexpected accent found in MATH mode"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->handleCommandTextMode(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    :goto_0
    return-void
.end method

.method public handleCommandMathMode(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 4

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p3

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->accentMap:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    new-array v2, v2, [Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    sget-object v3, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->hasInterpretationType([Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->accentMap:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getCodePoint()I

    move-result v0

    invoke-virtual {v1, v0}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->getAccentedMathChar(I)C

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLIdentifierElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->mathMLElementName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->mathMLElementName:Ljava/lang/String;

    const-string v1, "mover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "true"

    if-eqz v0, :cond_2

    const-string v0, "accent"

    :goto_0
    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->mathMLElementName:Ljava/lang/String;

    const-string v2, "munder"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "accentunder"

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Ljava/util/List;)V

    iget-char p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->combiningCharacter:C

    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :goto_2
    return-void
.end method

.method public handleCommandTextMode(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 5

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v2

    sget-object v4, Luk/ac/ed/ph/snuggletex/tokens/TokenType;->TEXT_MODE_TEXT:Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    if-eq v2, v4, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETA0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/dombuilding/AccentHandler;->accentMap:Luk/ac/ed/ph/snuggletex/definitions/AccentMap;

    invoke-virtual {v4, v2}, Luk/ac/ed/ph/snuggletex/definitions/AccentMap;->getAccentedTextChar(I)C

    move-result v4

    if-eqz v4, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_3
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETA2:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {p1, p2, p3, v0, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :goto_1
    return-void

    :cond_4
    :goto_2
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDETA1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    return-void
.end method
