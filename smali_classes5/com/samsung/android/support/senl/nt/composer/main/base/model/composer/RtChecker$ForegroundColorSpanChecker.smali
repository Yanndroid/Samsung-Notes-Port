.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ForegroundColorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundColorSpanChecker"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ColorSpanChecker;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getColor(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenForegroundColorSpan;->getColor()I

    move-result p1

    return p1
.end method

.method public updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-boolean v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->getSpanStateValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->setValue(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->getDefaultValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontColor;->setValue(I)V

    :goto_0
    return-void
.end method
