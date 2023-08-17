.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$OnOffSingleCursorSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnOffSingleCursorSpanChecker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanStateValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SingleCursorSpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public abstract getValue(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)Ljava/lang/Object;
.end method
