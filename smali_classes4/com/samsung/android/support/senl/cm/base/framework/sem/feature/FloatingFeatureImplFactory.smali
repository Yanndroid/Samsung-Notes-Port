.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory$FloatingFeatureCompatSemImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory$FloatingFeatureCompatSemImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/FloatingFeatureImplFactory$FloatingFeatureCompatSemImpl;-><init>()V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;

    move-result-object p1

    return-object p1
.end method
