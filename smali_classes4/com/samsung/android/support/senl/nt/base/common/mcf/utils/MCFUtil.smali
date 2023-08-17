.class public Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY:Ljava/lang/String; = "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

.field private static final SETTINGS_NAME_MCF_CONTINUITY:Ljava/lang/String; = "mcf_continuity"

.field public static final URI_SETTINGS_MCF_CONTINUITY:Landroid/net/Uri;

.field private static sIsMCFContinuitySupported:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "mcf_continuity"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->URI_SETTINGS_MCF_CONTINUITY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isContinuitySettingEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isMCFContinuitySupported()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "mcf_continuity"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method public static isMCFContinuitySupported()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->sIsMCFContinuitySupported:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->sIsMCFContinuitySupported:Ljava/lang/Boolean;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->sIsMCFContinuitySupported:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->sIsMCFContinuitySupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isMCFContinuitySupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->URI_SETTINGS_MCF_CONTINUITY:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static unregisterContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/utils/MCFUtil;->isMCFContinuitySupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method
