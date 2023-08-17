.class Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$MathContentBuilderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;->this$0:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildMathElementContent(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;->this$0:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    invoke-virtual {p3, p1, p2}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleMathTokensAsSingleElement(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder$1;->this$0:Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Luk/ac/ed/ph/snuggletex/internal/DOMBuilder;->handleTokens(Lorg/w3c/dom/Element;Luk/ac/ed/ph/snuggletex/tokens/ArgumentContainerToken;Z)V

    :goto_0
    return-void
.end method
