.class public Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseSpen(Landroid/app/Activity;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSupportedSpenDisplay(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/desktopmode/DesktopModeCompat;->isNotDexModeOrStandAloneMode(Landroid/content/Context;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->canUseSpen(ZZ)Z

    move-result p0

    return p0
.end method

.method public static canUseSpen(ZZ)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerSpenUtils;->isSpenActivated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpenActivated()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSpenActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpenHoverListener(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "pen_hovering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSpenSupportChangeable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isBundledSpenSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
