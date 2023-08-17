.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DVFSHelperCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemSosImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemImpl;

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/DVFSHelperCompatImplFactory$DVFSHelperCompatSemImpl;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory;->create(ILandroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsDVFSHelperCompatImplFactory$IDVFSHelperCompatImpl;

    move-result-object p1

    return-object p1
.end method
