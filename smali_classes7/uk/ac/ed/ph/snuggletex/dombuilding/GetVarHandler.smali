.class public final Luk/ac/ed/ph/snuggletex/dombuilding/GetVarHandler;
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

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getOptionalArgument()Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->extractStringValue(Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getVariableManager()Luk/ac/ed/ph/snuggletex/internal/VariableManager;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Luk/ac/ed/ph/snuggletex/internal/VariableManager;->getVariable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    :cond_1
    return-void
.end method
