.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSemSOsImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardManagerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory;->isSos()Z

    move-result v0

    return v0
.end method

.method private static isSos()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSosOrHigher()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-gt v0, v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v0

    const v2, 0x1fbd0

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory;->isSosOrHigher()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSemSOsImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSemSOsImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/d;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/c;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;

    move-result-object p1

    return-object p1
.end method
