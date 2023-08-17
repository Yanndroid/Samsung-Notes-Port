.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory$StatusBarManagerCompatSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;
    .locals 2

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory$StatusBarManagerCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/StatusBarManagerCompatImplFactory$StatusBarManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/g;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory;->create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
