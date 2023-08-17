.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$FloatingFeatureCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$IFloatingFeatureCompatImpl;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$FloatingFeatureCompatPureImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsFloatingFeatureImplFactory$FloatingFeatureCompatPureImpl;-><init>()V

    return-object p1
.end method
