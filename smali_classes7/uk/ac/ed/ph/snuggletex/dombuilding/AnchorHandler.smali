.class public final Luk/ac/ed/ph/snuggletex/dombuilding/AnchorHandler;
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
    .locals 1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->validateXMLId(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "a"

    invoke-virtual {p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendXHTMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    const-string p2, "id"

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
