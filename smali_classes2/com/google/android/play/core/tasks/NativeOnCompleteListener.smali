.class public Lcom/google/android/play/core/tasks/NativeOnCompleteListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->a:J

    iput p3, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    return-void
.end method


# virtual methods
.method public native nativeOnComplete(JILjava/lang/Object;I)V
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->a:J

    iget v4, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->nativeOnComplete(JILjava/lang/Object;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/play/core/tasks/j;

    if-nez v0, :cond_1

    iget-wide v2, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->a:J

    iget v4, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    const/4 v5, 0x0

    const/16 v6, -0x64

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->nativeOnComplete(JILjava/lang/Object;I)V

    return-void

    :cond_1
    check-cast p1, Lcom/google/android/play/core/tasks/j;

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/j;->getErrorCode()I

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v1, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->a:J

    iget v3, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->nativeOnComplete(JILjava/lang/Object;I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x33

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TaskException has error code 0 on task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/google/android/play/core/tasks/NativeOnCompleteListener;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "onComplete called for incomplete task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
