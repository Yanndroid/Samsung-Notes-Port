.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MathEnvironmentHandler;
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
    .locals 3

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getEnvironment()Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    move-result-object v0

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "mrow"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    goto :goto_0

    :cond_0
    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/CorePackageDefinitions;->ENV_DISPLAYMATH:Luk/ac/ed/ph/snuggletex/definitions/BuiltinEnvironment;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->buildMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    :goto_0
    return-void
.end method
