.class Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getInstance()Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
