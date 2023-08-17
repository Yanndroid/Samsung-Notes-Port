.class public Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerManagerCompat"

.field private static sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3, p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/PowerManagerCompatImplFactory;->create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public acquireWakeLock(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->acquireWakeLock(Ljava/lang/String;J)V

    return-void
.end method

.method public getCurrentThermalStatus()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->getCurrentThermalStatus()I

    move-result v0

    return v0
.end method

.method public goToSleep(J)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->goToSleep(J)Z

    move-result p1

    return p1
.end method

.method public isInteractive()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->releaseWakeLock()V

    return-void
.end method

.method public wakeUp(JI)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsPowerManagerCompatImplFactory$IPowerManagerCompatImpl;->wakeUp(JI)Z

    move-result p1

    return p1
.end method
