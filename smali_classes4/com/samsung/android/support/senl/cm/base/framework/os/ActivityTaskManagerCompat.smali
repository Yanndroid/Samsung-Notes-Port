.class public Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/ActivityTaskManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;)V

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;

    return-object v0
.end method


# virtual methods
.method public registerTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;->registerTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V

    return-void
.end method

.method public unregisterTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/ActivityTaskManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$SemActivityTaskManagerDelegateImpl;->unregisterTaskChangeCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsActivityTaskManagerCompatImplFactory$TaskChangeCallback;)V

    return-void
.end method
