.class Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundHandler"
.end annotation


# instance fields
.field private mCalledCount:I

.field private mInterval:I

.field private mMaxCalledCount:Ljava/lang/Integer;

.field private mStopFlag:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p1, 0x1388

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mInterval:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mStopFlag:Z

    return-void
.end method

.method private set(Ljava/lang/Integer;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mMaxCalledCount:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mCalledCount:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mInterval:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger;->dump()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mMaxCalledCount:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mCalledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mCalledCount:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mCalledCount:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mStopFlag:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mStopFlag:Z

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mInterval:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setCountState(II)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->set(Ljava/lang/Integer;I)V

    return-void
.end method

.method public setRepeatState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->set(Ljava/lang/Integer;I)V

    return-void
.end method

.method public setStopFlag()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/MemoryLogger$BackgroundHandler;->mStopFlag:Z

    return-void
.end method
