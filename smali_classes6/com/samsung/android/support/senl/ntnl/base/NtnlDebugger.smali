.class public Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GC_CALL_DURATION_MS:I = 0x64

.field private static final GC_CALL_TIMES:I = 0x3

.field private static final LEAK_CHECK_DELAY_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "NtnlDebugger"

.field private static sInstance:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native NtnlDebugger_isEnabledLeakDebug()Z
.end method

.method private native NtnlDebugger_printCurrentInstancesInfo()V
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->lambda$printCurrentInstancesInfo$0()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->printCurrentInstancesInfo()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->sInstance:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->sInstance:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->sInstance:Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;

    return-object v0
.end method

.method private synthetic lambda$printCurrentInstancesInfo$0()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error GC sleep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NtnlDebugger"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/ntnl/base/NtnlLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->NtnlDebugger_printCurrentInstancesInfo()V

    return-void
.end method

.method private printCurrentInstancesInfo()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lp4/a;

    invoke-direct {v1, p0}, Lp4/a;-><init>(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public checkLeakState()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;->NtnlDebugger_isEnabledLeakDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lp4/b;

    invoke-direct {v1, p0}, Lp4/b;-><init>(Lcom/samsung/android/support/senl/ntnl/base/NtnlDebugger;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
