.class public final Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/dombuilding/CommandHandler;


# instance fields
.field private final outputCharacter:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;->outputCharacter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handleCommand(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/CommandToken;)V
    .locals 1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object p3

    sget-object v0, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;->outputCharacter:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLIdentifierElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/CharacterCommandHandler;->outputCharacter:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method
