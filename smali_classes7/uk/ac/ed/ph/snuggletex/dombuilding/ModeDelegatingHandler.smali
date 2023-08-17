.class public final Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# instance fields
.field private final mathModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

.field private final textModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;->textModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;->mathModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->isBuildingMathMLIsland()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;->mathModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/ModeDelegatingHandler;->textModeBuilder:Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;

    :goto_0
    invoke-interface {v0, p1, p2, p3}, Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;->handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V

    return-void
.end method
