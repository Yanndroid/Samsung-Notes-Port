.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSemImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSemImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/i;)V

    return-object p1

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory$HoverCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/h;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    move-result-object p1

    return-object p1
.end method
