.class public final Luk/ac/ed/ph/snuggletex/dombuilding/StyleHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 7

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getComputedStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    move-result-object v0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    invoke-virtual {v5}, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;->getTextFlowContext()Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    move-result-object v5

    sget-object v6, Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;->START_NEW_XHTML_BLOCK:Luk/ac/ed/ph/snuggletex/definitions/TextFlowContext;

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, v0, v4, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->openStyle(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;ZZ)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->closeStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-void
.end method
