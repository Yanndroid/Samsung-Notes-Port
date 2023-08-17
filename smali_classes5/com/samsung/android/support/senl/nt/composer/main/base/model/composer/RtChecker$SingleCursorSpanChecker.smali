.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingleCursorSpanChecker"
.end annotation


# instance fields
.field public spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    if-ne v0, p2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result p2

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getExpansion()I

    move-result p2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->setSpanState(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public abstract getSpanStateValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSpanState(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    return-void
.end method

.method public abstract updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end method
