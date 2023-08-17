.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnOffSpanChecker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSpans(Ljava/util/LinkedList;II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;II)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v4

    if-gt v4, p2, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v4

    if-gt v4, p2, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSpanChecker;->isEnabled(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z

    move-result v2

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v4

    if-eq v4, v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSpanChecker;->isEnabled(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSpanChecker;->isEnabled(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z

    move-result v4

    if-eq v2, v4, :cond_2

    :goto_1
    move p1, v0

    move v2, p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    :goto_2
    if-eqz v2, :cond_6

    if-ge v1, p3, :cond_6

    goto :goto_3

    :cond_6
    move v0, p1

    :goto_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method public getSpanStateValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-boolean v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract isEnabled(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Z
.end method
