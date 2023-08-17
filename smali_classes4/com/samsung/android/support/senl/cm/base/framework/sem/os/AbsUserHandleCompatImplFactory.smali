.class public abstract Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatPureImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$IUserHandleCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/e;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatPureImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/os/AbsUserHandleCompatImplFactory$UserHandleCompatPureImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/os/d;)V

    return-object p1
.end method
