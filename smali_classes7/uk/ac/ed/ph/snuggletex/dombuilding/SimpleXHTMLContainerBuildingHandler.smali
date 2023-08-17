.class public Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;
.implements Luk/ac/ed/ph/snuggletex/dombuilding/EnvironmentHandler;


# instance fields
.field private final cssClassName:Ljava/lang/String;

.field private final xhtmlElementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->xhtmlElementName:Ljava/lang/String;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->cssClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->handleContent(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method

.method public handleContent(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V
    .locals 4

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->xhtmlElementName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->cssClassName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, p2, v2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->applyCSSStyle(Lorg/w3c/dom/Element;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    return-void
.end method

.method public handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
    .locals 0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;->getContent()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/SimpleXHTMLContainerBuildingHandler;->handleContent(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    return-void
.end method
