.class Lcom/samsung/android/sdk/smp/task/ThreadController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadController"

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static mStartId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/task/ThreadController;->stopSelf(I)V

    return-void
.end method

.method public static declared-synchronized execute(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/smp/task/ThreadController;

    monitor-enter v0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->TAG:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SmpCtrThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/ThreadController$MessageHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandler:Landroid/os/Handler;

    :cond_1
    sget v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mStartId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mStartId:I

    sget-object v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/samsung/android/sdk/smp/task/ThreadController;->mStartId:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/task/STask;->toBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->TAG:Ljava/lang/String;

    const-string p1, "cannot execute task. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized stopSelf(I)V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/smp/task/ThreadController;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/sdk/smp/task/ThreadController;->mStartId:I

    if-ne p0, v1, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandlerThread:Landroid/os/HandlerThread;

    sput-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->mHandler:Landroid/os/Handler;

    const/4 p0, 0x0

    sput p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->mStartId:I

    sget-object p0, Lcom/samsung/android/sdk/smp/task/ThreadController;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/smp/common/util/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
