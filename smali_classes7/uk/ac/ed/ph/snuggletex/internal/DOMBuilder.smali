.class public final Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;,
        Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;
    }
.end annotation


# instance fields
.field private final buildRootElement:Lorg/w3c/dom/Element;

.field private currentInlineCSSProperties:Ljava/util/Properties;

.field private currentMathOwnerElement:Lorg/w3c/dom/Element;

.field private currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

.field private final defaultMathContentBuilderCallback:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;

.field private final document:Lorg/w3c/dom/Document;

.field private final lineSeparator:Ljava/lang/String;

.field private final mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack<",
            "Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

.field private final sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

.field private final textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack<",
            "Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final variableManager:Luk/ac/ed/ph/snuggletex/internal/VariableManager;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/SessionContext;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->lineSeparator:Ljava/lang/String;

    new-instance v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;

    invoke-direct {v0, p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;-><init>(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;)V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->defaultMathContentBuilderCallback:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildRootElement:Lorg/w3c/dom/Element;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/VariableManager;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/internal/VariableManager;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->variableManager:Luk/ac/ed/ph/snuggletex/internal/VariableManager;

    const/4 p1, 0x0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentInlineCSSProperties:Ljava/util/Properties;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentMathOwnerElement:Lorg/w3c/dom/Element;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    new-instance p1, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-direct {p1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    return-void
.end method

.method private buildStringValue(Ljava/lang/StringBuilder;Lorg/w3c/dom/NodeList;)V
    .locals 5

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildStringValue(Ljava/lang/StringBuilder;Lorg/w3c/dom/NodeList;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCurrentInlineCSSProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentInlineCSSProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-static {v0}, Luk/ac/ed/ph/snuggletex/utilities/CSSUtilities;->readInlineCSSProperties(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentInlineCSSProperties:Ljava/util/Properties;

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentInlineCSSProperties:Ljava/util/Properties;

    return-object v0
.end method


# virtual methods
.method public appendErrorElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;)Lorg/w3c/dom/Element;
    .locals 6

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getErrorOutputOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$DOMOutputOptions$ErrorOutputOptions:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "merror"

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object v1

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/InputError;->getErrorCode()Luk/ac/ed/ph/snuggletex/ErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtext"

    invoke-virtual {p0, v0, v2, v1, v4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    :cond_0
    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->findNearestXHTMLAncestorOrSelf(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object p2

    invoke-static {v1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorAsXHTML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/InputError;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected switch case "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;->getError()Luk/ac/ed/ph/snuggletex/InputError;

    move-result-object p2

    sget-object v5, Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;->XML_FULL:Luk/ac/ed/ph/snuggletex/DOMOutputOptions$ErrorOutputOptions;

    if-ne v0, v5, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-static {v1, v3, p2, v2}, Luk/ac/ed/ph/snuggletex/utilities/MessageFormatter;->formatErrorAsXML(Lorg/w3c/dom/Document;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;Luk/ac/ed/ph/snuggletex/InputError;Z)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    :goto_1
    return-object p1
.end method

.method public appendMathCharacter(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getCodePoint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$definitions$MathCharacter$MathCharacterType:[I

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getType()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected switch case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->getType()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter$MathCharacterType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "No handling for ACCENT coded yet!"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLNumberElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLIdentifierElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingMathML()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getMathMLPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method public appendMathMLIdentifierElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->getMathVariantName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isMathVariantMapping()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;->getAccentedChar(C)C

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string v0, "mi"

    invoke-virtual {p0, p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz v2, :cond_2

    const-string p2, "mathvariant"

    invoke-interface {p1, p2, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public appendMathMLNumberElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    const-string v0, "mn"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    const-string v0, "mo"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public appendMathMLSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    const-string v0, "mspace"

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string v0, "width"

    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .locals 0

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public varargs appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/InputError;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v1

    invoke-direct {v0, p3, v1, p4}, Luk/ac/ed/ph/snuggletex/InputError;-><init>(Luk/ac/ed/ph/snuggletex/ErrorCode;Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;[Ljava/lang/Object;)V

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    invoke-interface {p3, v0}, Luk/ac/ed/ph/snuggletex/internal/SessionContext;->registerError(Luk/ac/ed/ph/snuggletex/InputError;)V

    new-instance p3, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;-><init>(Luk/ac/ed/ph/snuggletex/InputError;Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;)V

    invoke-virtual {p0, p1, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendErrorElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public appendSimpleMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)V
    .locals 2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretationMap()Ljava/util/EnumMap;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_CHARACTER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getMathCharacter()Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathCharacter(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;)V

    goto :goto_1

    :cond_0
    sget-object p2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_IDENTIFIER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLIdentifierElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_1
    sget-object p2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_NUMBER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/MathNumberInterpretation;->getNumber()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLNumberElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_2
    sget-object p2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_OPERATOR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/MathOperatorInterpretation;->getMathMLOperatorContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLOperatorElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_3
    sget-object p2, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_FUNCTION:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Luk/ac/ed/ph/snuggletex/semantics/MathFunctionInterpretation;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/semantics/MathFunctionInterpretation;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    return-void

    :cond_4
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected logic branch based on InterpretationMap, which was: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendSnuggleElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingSnuggleXML()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getSnuggleXMLPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    const-string v1, "http://www.ph.ed.ac.uk/snuggletex"

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method public appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->lineSeparator:Ljava/lang/String;

    const-string v0, "\n"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {p3, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_0
    return-object p3
.end method

.method public appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isPrefixingXHTML()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getXHTMLPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    const-string v1, "http://www.w3.org/1999/xhtml"

    invoke-interface {v0, v1, p2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p2
.end method

.method public appendXHTMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;
    .locals 0

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    return-object p1
.end method

.method public varargs applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isInliningCSS()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getCurrentInlineCSSProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-eqz v4, :cond_1

    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "style"

    goto :goto_1

    :cond_3
    const-string v0, " "

    invoke-static {p2, v0}, Luk/ac/ed/ph/snuggletex/internal/util/StringUtilities;->join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "class"

    :goto_1
    invoke-interface {p1, v0, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public buildDOMSubtree(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->XHTML:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->DEFAULT_STYLE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildRootElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v0, "textStyleStack was non-empty at end of DOM building process"

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string v0, "mathVariantMapStack was non-empty at end of DOM building process"

    invoke-direct {p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V
    .locals 6

    iget-object v5, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->defaultMathContentBuilderCallback:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;ZLuk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;)V

    return-void
.end method

.method public buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;ZLuk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;)V
    .locals 3

    if-eqz p4, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    goto :goto_0

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_INLINE:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    :goto_0
    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->setOutputContext(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;)V

    const-string v0, "math"

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz p4, :cond_1

    const-string v1, "display"

    const-string v2, "block"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isAddingMathSourceAnnotations()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "semantics"

    invoke-virtual {p0, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->isApplyingFirefox3SemanticsWorkaround()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    const-string p4, "mstyle"

    invoke-virtual {p0, v0, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p4

    const-string v1, "displaystyle"

    const-string v2, "true"

    invoke-interface {p4, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p4, v0

    :goto_1
    const/4 v1, 0x1

    invoke-interface {p5, p4, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;->buildMathElementContent(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "annotation"

    invoke-virtual {p0, v0, p3, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    move-result-object p2

    const-string p3, "encoding"

    const-string p4, "SnuggleTeX"

    invoke-interface {p2, p3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    invoke-interface {p5, v0, p3, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;->buildMathElementContent(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    :goto_2
    sget-object p2, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->XHTML:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->setOutputContext(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;)V

    return-void
.end method

.method public closeStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-object v0
.end method

.method public extractNodeListValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Lorg/w3c/dom/NodeList;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    const-string v1, "dummy"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    return-object p1
.end method

.method public extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractNodeListValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildStringValue(Ljava/lang/StringBuilder;Lorg/w3c/dom/NodeList;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findNearestXHTMLAncestorOrSelf(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->XHTML:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentMathOwnerElement:Lorg/w3c/dom/Element;

    :goto_0
    return-object p1
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getMathVariantMapStack()Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack<",
            "Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->mathVariantMapStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    return-object v0
.end method

.method public getOptions()Luk/ac/ed/ph/snuggletex/DOMOutputOptions;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    return-object v0
.end method

.method public getOutputContext()Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    return-object v0
.end method

.method public getSessionContext()Luk/ac/ed/ph/snuggletex/internal/SessionContext;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->sessionContext:Luk/ac/ed/ph/snuggletex/internal/SessionContext;

    return-object v0
.end method

.method public getVariableManager()Luk/ac/ed/ph/snuggletex/internal/VariableManager;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->variableManager:Luk/ac/ed/ph/snuggletex/internal/VariableManager;

    return-object v0
.end method

.method public handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mrow"

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p2

    invoke-interface {p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Ljava/util/List;)V

    return-void
.end method

.method public handleTextToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;)V
    .locals 8

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_b

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_9

    const/16 v5, 0x2014

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_5

    const/16 v6, 0x3c

    if-eq v4, v6, :cond_4

    const/16 v6, 0x3e

    if-eq v4, v6, :cond_3

    const/16 v6, 0x60

    if-eq v4, v6, :cond_1

    const/16 v6, 0x7c

    if-eq v4, v6, :cond_6

    const/16 v5, 0x7e

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0xa0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_2

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    const/16 v3, 0x201c

    goto :goto_2

    :cond_2
    const/16 v4, 0x2018

    goto :goto_1

    :cond_3
    const/16 v4, 0xbf

    goto :goto_1

    :cond_4
    const/16 v4, 0xa1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_8

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_8

    add-int/lit8 v3, v3, 0x2

    if-ge v3, v1, :cond_7

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_7

    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/16 v3, 0x2013

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_a

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_a

    const/16 v3, 0x201d

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_3

    :cond_a
    const/16 v4, 0x2019

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "1ex"

    if-nez v1, :cond_c

    :goto_4
    invoke-virtual {p0, p1, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_5

    :cond_c
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, p1, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :cond_d
    const-string v1, "mtext"

    invoke-virtual {p0, p1, v1, v0, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_4

    :cond_e
    invoke-virtual {p0, p1, p2, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    :cond_f
    :goto_5
    return-void
.end method

.method public handleToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)V
    .locals 2

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$2;->$SwitchMap$uk$ac$ed$ph$snuggletex$tokens$TokenType:[I

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled switch case "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getType()Luk/ac/ed/ph/snuggletex/tokens/TokenType;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEG00:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendSimpleMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Math Mode token found but outputContext is currently "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "1ex"

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLSpace(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto/16 :goto_1

    :cond_1
    const-string p2, " "

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    goto :goto_1

    :pswitch_4
    check-cast p2, Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTextToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/SimpleToken;)V

    goto :goto_1

    :pswitch_5
    check-cast p2, Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendErrorElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ErrorToken;)Lorg/w3c/dom/Element;

    goto :goto_1

    :pswitch_6
    check-cast p2, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mrow"

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/BraceContainerToken;->getContents()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "BraceContainerTokens should not be present outside Math islands"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_7
    check-cast p2, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;->getDOMBuildingHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1, p2}, Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;->handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V

    goto :goto_1

    :cond_3
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No builder registered for Environment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_8
    check-cast p2, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;->getDOMBuildingHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1, p2}, Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;->handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    :goto_1
    return-void

    :cond_4
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No builder registered for Command "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getCommand()Luk/ac/ed/ph/snuggletex/definitions/BuiltinCommand;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/tokens/FlowToken;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleToken(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/FlowToken;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    sub-int p3, p2, v0

    if-lez p3, :cond_2

    sub-int p3, p2, p3

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const-string v1, ""

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "^\\s+"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\\s+$"

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V
    .locals 0

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    return-void
.end method

.method public isBuildingMathMLIsland()Z
    .locals 2

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getOutputContext()Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    if-eq v0, v1, :cond_1

    sget-object v1, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_INLINE:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public varargs isParentElement(Lorg/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    array-length p2, p3

    const/4 v1, 0x1

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object p1

    array-length p2, p3

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    aget-object v3, p3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public openStyle(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;ZZ)Lorg/w3c/dom/Element;
    .locals 4

    invoke-virtual {p0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object p3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->getTargetMathMLMathVariantName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    const-string p4, "mstyle"

    invoke-virtual {p0, p1, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p4, "mathvariant"

    invoke-interface {p1, p4, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    const-string p3, "mrow"

    invoke-virtual {p0, p1, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    goto :goto_3

    :cond_1
    iget-object p4, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p4}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object v0

    invoke-virtual {p4}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    if-eqz p3, :cond_2

    const-string v1, "div"

    goto :goto_0

    :cond_2
    const-string v1, "span"

    :goto_0
    invoke-virtual {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->getTargetCSSClassName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object v0

    invoke-virtual {p4}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    move-result-object p4

    if-eq v0, p4, :cond_6

    if-eqz p3, :cond_4

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->getTargetBlockXHTMLElementName()Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->getTargetInlineXHTMLElementName()Ljava/lang/String;

    move-result-object p4

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->getTargetBlockCSSClassName()Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->getTargetInlineCSSClassName()Ljava/lang/String;

    move-result-object p3

    :goto_2
    invoke-virtual {p0, p1, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p3, :cond_6

    new-array p4, v3, [Ljava/lang/String;

    aput-object p3, p4, v2

    invoke-virtual {p0, p1, p4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->textStyleStack:Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    invoke-virtual {p3, p2}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public resolveLink(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/net/URI;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->validateURI(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->options:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/DOMOutputOptions;->getLinkResolver()Luk/ac/ed/ph/snuggletex/LinkResolver;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->getDocument()Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;->getInput()Luk/ac/ed/ph/snuggletex/SnuggleInput;

    move-result-object p2

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/SnuggleInput;->getURI()Ljava/net/URI;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Luk/ac/ed/ph/snuggletex/LinkResolver;->mapLink(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public setOutputContext(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;)V
    .locals 1

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentOutputContext:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_BLOCK:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    if-eq p2, v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;->MATHML_INLINE:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$OutputContext;

    if-ne p2, v0, :cond_1

    :cond_0
    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->currentMathOwnerElement:Lorg/w3c/dom/Element;

    :cond_1
    return-void
.end method

.method public validateURI(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEX04:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const/4 p1, 0x0

    return-object p1
.end method

.method public validateXMLId(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->validateXMLName(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->document:Lorg/w3c/dom/Document;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEX05:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public validateXMLName(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p3}, Luk/ac/ed/ph/snuggletex/internal/util/XMLUtilities;->isXMLName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEX03:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object p3
.end method
