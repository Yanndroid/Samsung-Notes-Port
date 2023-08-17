.class public final Luk/ac/ed/ph/snuggletex/dombuilding/LineBreakHandler;
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
    .locals 2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0xa

    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    const-string v1, "mtext"

    invoke-virtual {p1, p2, v1, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLTextElement(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_0
    const-string p3, "br"

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    :goto_0
    return-void
.end method
