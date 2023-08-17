.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ValueSpanChecker"
.end annotation


# instance fields
.field public mDefaultValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    return-void
.end method


# virtual methods
.method public abstract checkSpans(Ljava/util/LinkedList;II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;II)",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;"
        }
    .end annotation
.end method

.method public getSpanStateValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$ValueSpanChecker;->mDefaultValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method
