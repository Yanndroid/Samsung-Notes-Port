.class public final Luk/ac/ed/ph/snuggletex/dombuilding/InsertUnicodeHandler;
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
    .locals 5

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getSlice()Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;

    move-result-object v0

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/internal/FrozenSlice;->extract()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    const v4, 0xffff

    if-gt v2, v4, :cond_0

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEXU1:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {p1, p2, p3, v2, v4}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;->TDEXU0:Luk/ac/ed/ph/snuggletex/definitions/CoreErrorCode;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p1, p2, p3, v2, v3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendOrThrowError(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;Luk/ac/ed/ph/snuggletex/ErrorCode;[Ljava/lang/Object;)Lorg/w3c/dom/Element;

    :goto_0
    return-void
.end method
