.class public final Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final session:Luk/ac/ed/ph/snuggletex/SnuggleSession;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnuggleSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    return-void
.end method


# virtual methods
.method public doMathInput(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/XMLStringOutputOptions;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->doMathInput(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->serializeElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/SerializationSpecifier;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public doMathInput(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    iget-object v0, v0, Luk/ac/ed/ph/snuggletex/SnuggleSession;->defaultDOMOutputOptions:Luk/ac/ed/ph/snuggletex/DOMOutputOptions;

    invoke-virtual {p0, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->doMathInput(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/Element;

    move-result-object p1

    return-object p1
.end method

.method public doMathInput(Ljava/lang/String;Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/Element;
    .locals 3

    const-string v0, "Math Mode Input"

    invoke-static {p1, v0}, Luk/ac/ed/ph/snuggletex/internal/util/ConstraintUtilities;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-virtual {v1}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->reset()V

    :try_start_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    new-instance v2, Luk/ac/ed/ph/snuggletex/SnuggleInput;

    invoke-direct {v2, p1, v0}, Luk/ac/ed/ph/snuggletex/SnuggleInput;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->parseInput(Luk/ac/ed/ph/snuggletex/SnuggleInput;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-virtual {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->buildDOMSubtree(Luk/ac/ed/ph/snuggletex/DOMOutputOptions;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    iget-object p2, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->getErrors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string p2, "math"

    invoke-static {p1, p2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input did not yield exactly 1 <math> element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input did not yield exactly 1 result element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;

    const-string p2, "Unexpected IOException"

    invoke-direct {p1, p2}, Luk/ac/ed/ph/snuggletex/SnuggleLogicException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLastErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Luk/ac/ed/ph/snuggletex/InputError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/SnuggleSimpleMathRunner;->session:Luk/ac/ed/ph/snuggletex/SnuggleSession;

    invoke-virtual {v0}, Luk/ac/ed/ph/snuggletex/SnuggleSession;->getErrors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
