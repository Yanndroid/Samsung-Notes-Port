.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ValueSingleCursorSpanChecker"
.end annotation


# instance fields
.field public defaultValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;->defaultValue:I

    return-void
.end method


# virtual methods
.method public getSpanStateValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;->defaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public abstract getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;
.end method

.method public setSpanState(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->setSpanState(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSingleCursorSpanChecker;->getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    return-void
.end method
