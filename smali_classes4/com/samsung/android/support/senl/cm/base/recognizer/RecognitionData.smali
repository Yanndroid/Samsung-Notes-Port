.class public Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public CONTINUE_RECOGNITION:Ljava/lang/Boolean;

.field public mBlockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->CONTINUE_RECOGNITION:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public get()[B
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public put([B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/recognizer/RecognitionData;->mBlockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    return-void
.end method
