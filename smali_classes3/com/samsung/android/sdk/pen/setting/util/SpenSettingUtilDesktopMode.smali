.class public Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilDesktopMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenSettingUtilDesktopMode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontScale(Landroid/content/Context;)F
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/view/SpenConfiguration;->isDesktopMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
