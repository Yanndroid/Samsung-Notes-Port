.class public final Luk/ac/ed/ph/snuggletex/dombuilding/EnsureMathHandler;
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
    .locals 3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    :goto_0
    return-void
.end method
