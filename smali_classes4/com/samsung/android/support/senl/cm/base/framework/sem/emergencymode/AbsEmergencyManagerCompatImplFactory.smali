.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/b;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatPureImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$EmergencyManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/a;)V

    return-object p1
.end method
