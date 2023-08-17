.class Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentWalker"
.end annotation


# instance fields
.field private final inputDocument:Lorg/w3c/dom/Document;

.field private inputNode:Lorg/w3c/dom/Node;

.field private mathmlCounter:I

.field private final outputDocument:Lorg/w3c/dom/Document;

.field private outputParentNode:Lorg/w3c/dom/Node;

.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;Lorg/w3c/dom/Document;Lorg/w3c/dom/Document;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->this$0:Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputDocument:Lorg/w3c/dom/Document;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputDocument:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputDocument:Lorg/w3c/dom/Document;

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputDocument:Lorg/w3c/dom/Document;

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    iput v0, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->mathmlCounter:I

    :goto_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_4

    const-string v2, "math"

    invoke-static {v1, v2}, Luk/ac/ed/ph/snuggletex/utilities/MathMLUtilities;->isMathMLElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->this$0:Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputDocument:Lorg/w3c/dom/Document;

    iget-object v4, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    iget v5, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->mathmlCounter:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->mathmlCounter:I

    invoke-virtual {v1, v2, v3, v4, v5}, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor;->handleMathMLIsland(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputDocument:Lorg/w3c/dom/Document;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_3

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->outputParentNode:Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_3
    :goto_3
    iput-object v1, p0, Luk/ac/ed/ph/snuggletex/utilities/MathMLPostProcessor$DocumentWalker;->inputNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_4
    return-void
.end method
