.class public final Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private firstBranch:Lorg/w3c/dom/Element;

.field private mathElement:Lorg/w3c/dom/Element;

.field private final textAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlAnnotations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/NodeList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->textAnnotations:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->xmlAnnotations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFirstBranch()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->firstBranch:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getMathElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->mathElement:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method public getTextAnnotations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->textAnnotations:Ljava/util/Map;

    return-object v0
.end method

.method public getXmlAnnotations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/NodeList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->xmlAnnotations:Ljava/util/Map;

    return-object v0
.end method

.method public setFirstBranch(Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->firstBranch:Lorg/w3c/dom/Element;

    return-void
.end method

.method public setMathElement(Lorg/w3c/dom/Element;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/UnwrappedParallelMathMLDOM;->mathElement:Lorg/w3c/dom/Element;

    return-void
.end method
