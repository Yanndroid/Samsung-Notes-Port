.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSpanChecker"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;-><init>(I)V

    return-void
.end method


# virtual methods
.method public addSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->addSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    :cond_0
    return-void
.end method

.method public checkSpans(Ljava/util/LinkedList;II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;II)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, p2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v4

    if-gt v4, p2, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v4

    if-gt v4, p2, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v0

    :goto_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    goto :goto_0

    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v5

    cmpl-float v5, v5, v0

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v5

    if-eq v5, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result v3

    cmpl-float v3, v3, v0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_1

    :cond_4
    :goto_2
    move p1, v3

    goto :goto_3

    :cond_5
    const/4 p1, 0x1

    :goto_3
    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    int-to-float p2, p2

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_6

    if-ge v1, p3, :cond_6

    goto :goto_4

    :cond_6
    move v3, p1

    :goto_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    float-to-int p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>(ZLjava/lang/Object;)V

    return-object p1
.end method

.method public updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-boolean v1, v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->getSpanStateValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setValue(I)V

    :cond_0
    return-void
.end method
