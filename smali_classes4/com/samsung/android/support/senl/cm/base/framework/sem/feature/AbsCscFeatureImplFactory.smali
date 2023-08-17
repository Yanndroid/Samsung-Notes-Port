.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$ICscFeatureCompatImpl;
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatSdlImpl;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatSdlImpl;-><init>()V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatPureImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/AbsCscFeatureImplFactory$CscFeatureCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/feature/a;)V

    return-object p1
.end method
