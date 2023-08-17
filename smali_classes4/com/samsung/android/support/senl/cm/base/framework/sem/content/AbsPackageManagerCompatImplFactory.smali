.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$PackageManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$IPackageManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$IPackageManagerCompatImpl;
    .locals 1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$PackageManagerCompatPureImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/content/AbsPackageManagerCompatImplFactory$PackageManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/content/a;)V

    return-object p1
.end method
