.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory$DialogCompatSemImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory$DialogCompatSemImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory$DialogCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/e;)V

    return-object p1
.end method
