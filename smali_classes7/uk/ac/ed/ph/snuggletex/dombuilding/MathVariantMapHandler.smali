.class public final Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# instance fields
.field private final characterMap:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;->characterMap:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 2

    invoke-virtual {p1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->getMathVariantMapStack()Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;

    move-result-object v0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/MathVariantMapHandler;->characterMap:Luk/ac/ed/ph/snuggletex/definitions/MathVariantMap;

    invoke-virtual {v0, v1}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v1, 0x0

    aget-object p3, p3, v1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, p3, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/util/ArrayListStack;->pop()Ljava/lang/Object;

    return-void
.end method
