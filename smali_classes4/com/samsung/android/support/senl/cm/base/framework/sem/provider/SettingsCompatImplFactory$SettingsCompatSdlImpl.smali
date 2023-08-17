.class Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsCompatSdlImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$AbsSettingsCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsCompatSdlImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$AbsSettingsCompatImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsCompatSdlImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getPenDetachOption(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pen_detachment_option"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPenUsageDetected(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
