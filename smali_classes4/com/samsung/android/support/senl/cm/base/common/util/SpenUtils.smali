.class public Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SETTINGS_SPEN_ACTIVATED:Ljava/lang/String; = "pen_digitizer_enabled"

.field private static final TAG:Ljava/lang/String; = "SpenUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBundledSpenSupported()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "bundled=false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "SpenUtils"

    const-string v1, "isBundledSpenSupported true "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static isSpenActivated()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_digitizer_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getPenUsageDetected(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpenActivated : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SpenUtils"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isBundledSpenSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :cond_2
    :goto_0
    return v3
.end method

.method public static isSupportedSpenDisplay(Landroid/app/Activity;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/support/senl/cm/base/common/util/SpenUtils;->isSupportedSpenDisplay(Landroid/content/res/Configuration;)Z

    move-result p0

    return p0
.end method

.method public static isSupportedSpenDisplay(Landroid/content/res/Configuration;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/display/DisplayDeviceTypeCompat;->isSubDisplay(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SpenUtils"

    const-string v0, "isSupportedSpenDisplay false "

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
