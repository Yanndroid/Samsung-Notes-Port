.class public Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarManagerCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory;->create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public collapsePanels(Landroid/content/Context;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;->collapsePanels(Landroid/content/Context;)V

    return-void
.end method

.method public disable(Landroid/content/Context;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;->disable(Landroid/content/Context;I)V

    return-void
.end method

.method public getDisableExpand()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;->getDisableExpand()I

    move-result v0

    return v0
.end method

.method public getDisableNone()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;->getDisableNone()I

    move-result v0

    return v0
.end method
