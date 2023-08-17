.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->createServiceConnection(Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->lambda$onServiceConnected$0(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->lambda$onServiceDisconnected$1(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I

    move-result v0

    const-string v1, "onServiceConnected"

    const-string v2, "ContinuityAdapterImpl"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string p2, "rebound case -> unbindService"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {v3}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCommandManager;->initialize(ILcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCommand;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "fail to initialize"

    invoke-static {v2, v1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;Landroid/content/Context;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lk3/a;

    invoke-direct {p1, p3}, Lk3/a;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string p1, "SERVICE_STATE_CONNECTED"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lk3/f;

    invoke-direct {p1, p3}, Lk3/f;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V
    .locals 3

    const-string v0, "ContinuityAdapterImpl"

    const-string v1, "onServiceDisconnected"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$102(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;I)I

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lk3/a;

    invoke-direct {v0, p1}, Lk3/a;-><init>(Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnCallback(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    new-instance v1, Lk3/g;

    invoke-direct {v1, p0, p1, p2, v0}, Lk3/g;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;->val$serviceStateListener:Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;

    new-instance v0, Lk3/h;

    invoke-direct {v0, p0, p1}, Lk3/h;-><init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityAdapterImpl$1;Lcom/samsung/android/mcf/continuity/api/ContinuityAdapter$ServiceStateListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    return-void
.end method
