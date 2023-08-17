.class public Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;
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
.method public isEmergencyMode(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
