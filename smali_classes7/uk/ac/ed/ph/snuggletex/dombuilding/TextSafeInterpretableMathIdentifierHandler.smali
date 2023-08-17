.class public Luk/ac/ed/ph/snuggletex/dombuilding/TextSafeInterpretableMathIdentifierHandler;
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

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getLatexMode()Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    move-result-object v0

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;->MATH:Luk/ac/ed/ph/snuggletex/definitions/LaTeXMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p2, p3}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendSimpleMathElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/Token;)V

    goto :goto_0

    :cond_0
    sget-object v0, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->MATH_IDENTIFIER:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-virtual {p3, v0}, Luk/ac/ed/ph/snuggletex/tokens/Token;->getInterpretation(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    move-result-object p3

    check-cast p3, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/semantics/MathIdentifierInterpretation;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendTextNode(Lorg/w3c/dom/Element;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    :goto_0
    return-void
.end method
