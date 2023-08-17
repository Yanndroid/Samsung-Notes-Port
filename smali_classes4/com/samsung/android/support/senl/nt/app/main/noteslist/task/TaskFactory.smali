.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteTask;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$DeleteExpiredNotes;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTaskResult;,
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory$RestoreTask;
    }
.end annotation


# static fields
.field public static final SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final TAG_TASK_FACTORY:Ljava/lang/String; = "TaskFactory"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "TaskFactory"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/task/TaskFactory;->SINGLE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
