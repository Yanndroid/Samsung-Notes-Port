.class public final Luk/ac/ed/ph/snuggletex/dombuilding/InterpretableSimpleMathHandler;
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
    .locals 0

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendSimpleMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)V

    return-void
.end method
