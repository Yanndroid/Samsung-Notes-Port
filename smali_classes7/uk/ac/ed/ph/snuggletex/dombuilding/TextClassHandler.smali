.class public final Luk/ac/ed/ph/snuggletex/dombuilding/TextClassHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# instance fields
.field private final cssClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/TextClassHandler;->cssClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 6

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v3}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v3

    sget-object v5, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v3, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "div"

    goto :goto_1

    :cond_2
    const-string v1, "span"

    :goto_1
    invoke-virtual {p1, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/TextClassHandler;->cssClassName:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-virtual {p1, p2, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    return-void

    :cond_3
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "This handler is not intended for use in MathML islands"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
