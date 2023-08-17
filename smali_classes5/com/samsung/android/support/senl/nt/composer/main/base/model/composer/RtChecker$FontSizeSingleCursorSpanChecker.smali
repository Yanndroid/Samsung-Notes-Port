.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$FontSizeSingleCursorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontSizeSingleCursorSpanChecker"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenFontSizeSpan;->getSize()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setEnable(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontSize()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;->getSpanStateValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->setValue(I)V

    return-void
.end method
