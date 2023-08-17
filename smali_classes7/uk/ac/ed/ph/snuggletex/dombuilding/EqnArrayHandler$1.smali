.class Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;->handleEnvironment(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/EnvironmentToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;

.field public final synthetic val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

.field public final synthetic val$numColumns:I


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;I)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->this$0:Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    iput p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$numColumns:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildMathElementContent(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V
    .locals 8

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    const-string v0, "mtable"

    invoke-virtual {p3, p1, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p2}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    const-string v1, "mtr"

    invoke-virtual {v0, p1, v1}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast p3, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object p3

    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-virtual {p3}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "mtd"

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/FlowToken;

    iget-object v6, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    invoke-virtual {v6, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    sget-object v6, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler;->COLUMN_ALIGNMENTS:[Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    aget-object v3, v6, v3

    const-string v6, "columnalign"

    invoke-interface {v5, v6, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    check-cast v4, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/CommandToken;->getArguments()[Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;->getContents()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Ljava/util/List;Z)V

    move v3, v7

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$numColumns:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Luk/ac/ed/ph/snuggletex/dombuilding/EqnArrayHandler$1;->val$builder:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    invoke-virtual {v2, v0, v5}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->appendMathMLElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
