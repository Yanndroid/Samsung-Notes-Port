.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$BackgroundColorSingleCursorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundColorSingleCursorSpanChecker"
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

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBackgroundColorSpan;->getColor()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;->getFontBgColor()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;->getSpanStateValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontBgColor;->setValue(I)V

    return-void
.end method
