.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerDelegateSemUnderNMR1Impl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$IStatusBarManagerCompatImpl;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerDelegateSemUnderNMR1Impl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerDelegateSemUnderNMR1Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/d;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerCompatPureImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsStatusBarManagerCompatImplFactory$StatusBarManagerCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/c;)V

    return-object p1
.end method
