.class abstract Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanChecker"
.end annotation


# instance fields
.field public spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

.field public spans:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spans:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

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

.method public checkSpans(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spans:Ljava/util/LinkedList;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->checkSpans(Ljava/util/LinkedList;II)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-boolean v0, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    iput-boolean v0, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->enabled:Z

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    iput-object p1, p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    return-void
.end method

.method public getSpanStateValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spanState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanState;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public releaseList()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/RtChecker$SpanChecker;->spans:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public abstract updateSpanState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end method
