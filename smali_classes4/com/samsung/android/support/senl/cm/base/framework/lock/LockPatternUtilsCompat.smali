.class public Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsCompat"

.field private static sInstance:Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/LockPatternUtilsCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;
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
.method public isFmmLockEnabled(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/lock/LockPatternUtilsCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/lock/AbsLockPatternUtilsCompatImplFactory$ILockPatternUtilsCompatImpl;->isFmmLockEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
