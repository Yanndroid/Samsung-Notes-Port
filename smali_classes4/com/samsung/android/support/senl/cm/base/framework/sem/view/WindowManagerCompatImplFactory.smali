.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemPostOImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemFromN20Impl;
    }
.end annotation


# static fields
.field private static final EXTENSION_FLAG_MULTI_WINDOW_HANDLER_HIDDEN:I = 0x1000000

.field private static final TAG:Ljava/lang/String; = "WindowManagerCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result p1

    const v1, 0x1afa4

    if-lt p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemFromN20Impl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemFromN20Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/m;)V

    return-object p1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemPostOImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemPostOImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/o;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/n;)V

    return-object p1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/WindowManagerCompatImplFactory$WindowManagerCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/l;)V

    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsWindowManagerCompatImplFactory$IWindowManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
