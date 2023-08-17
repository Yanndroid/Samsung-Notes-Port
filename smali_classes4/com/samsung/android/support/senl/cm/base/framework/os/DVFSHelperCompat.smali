.class public Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HINT_TYPE_SPENSDK_FLING:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "DVFSHelperCompat"


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory;->create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->acquire()Z

    move-result v0

    return v0
.end method

.method public acquire(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->acquire(I)Z

    move-result p1

    return p1
.end method

.method public addExtraOption(Ljava/lang/String;J)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->addExtraOption(Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public doBoost(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->doBoost(I)Z

    move-result p1

    return p1
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->getSupportedCPUCoreNum()[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    return-object v0
.end method

.method public initScenarioType(Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->initScenarioType(Landroid/content/Context;I)V

    return-void
.end method

.method public release()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;->release()Z

    move-result v0

    return v0
.end method
