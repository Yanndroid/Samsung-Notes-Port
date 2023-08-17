.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory$EmergencyManagerCompatSemImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory$EmergencyManagerCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/EmergencyManagerCompatImplFactory$EmergencyManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/c;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/emergencymode/AbsEmergencyManagerCompatImplFactory$IEmergencyManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
