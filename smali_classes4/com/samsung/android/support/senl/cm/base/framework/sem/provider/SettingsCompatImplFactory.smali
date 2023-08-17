.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$AbsSettingsCompatImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsCompatSdlImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsDelegateSemImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsCompatImpl"

.field public static final UPSM_MODE_KEY:Ljava/lang/String; = "ultra_powersaving_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsDelegateSemImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsDelegateSemImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/d;)V

    return-object p1

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsCompatSdlImpl;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/SettingsCompatImplFactory$SettingsCompatSdlImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/c;)V

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/provider/AbsSettingsCompatImplFactory$ISettingsCompatImpl;

    move-result-object p1

    return-object p1
.end method
