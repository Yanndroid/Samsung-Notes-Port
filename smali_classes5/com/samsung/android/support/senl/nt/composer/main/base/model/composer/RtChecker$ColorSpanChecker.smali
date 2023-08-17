.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ColorSpanChecker"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;-><init>(I)V

    return-void
.end method


# virtual methods
.method public checkSpans(Ljava/util/LinkedList;II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;II)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>(ZLjava/lang/Object;)V

    return-object p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, p2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v5

    if-gt v5, p2, :cond_2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v5

    if-gt v5, p2, :cond_3

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;->getColor(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)I

    move-result v0

    :goto_1
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;->getColor(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)I

    move-result v5

    if-ne v5, v0, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v6

    if-ne v6, v3, :cond_4

    goto :goto_1

    :cond_4
    if-ne v5, v0, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v4

    if-eq v4, v3, :cond_1

    :cond_5
    move v2, v1

    :cond_6
    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    if-eq v0, p1, :cond_7

    if-ge v3, p3, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method public abstract getColor(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)I
.end method
