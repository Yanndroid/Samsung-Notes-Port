.class public Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final THRESHOLD_FOR_LARGE_SCREEN:I = 0x258


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canSupportSemSetAnchor()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isSemDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v0

    const v2, 0x1afa4

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isAbleToSetAnchor(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->canSupportSemSetAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/PopOverUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargeScreen(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
