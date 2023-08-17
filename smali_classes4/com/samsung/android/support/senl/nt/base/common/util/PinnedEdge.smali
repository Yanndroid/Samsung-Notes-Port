.class public Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;
    }
.end annotation


# static fields
.field private static final APP_EDGE_AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.appsedge.data.AppsEdgeDataProvider"

.field private static final BUNDLE_KEY_ENABLE_PINNED_EDGE:Ljava/lang/String; = "enablePinnedEdge"

.field private static final METHOD_IS_ENABLE_PINNED_EDGE:Ljava/lang/String; = "isEnablePinnedEdge"

.field private static final MODE_PANEL:I = 0x0

.field private static final MODE_PIN:I = 0x1

.field private static final PANEL_MODE:Ljava/lang/String; = "panel_mode"

.field private static final TAG:Ljava/lang/String; = "PinnedEdge"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mPanelModeSettingsCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

.field private mPinnedPanelRunning:Z

.field private mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPinnedPanelRunning:Z

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPanelModeSettingsCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->initPinnedPanelRunning()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPinnedPanelRunning:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->initPinnedPanelRunning()V

    return-void
.end method

.method private initPinnedPanelRunning()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    const-string v1, "initPinnedPanelRunning# "

    const-string v2, "PinnedEdge"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "panel_mode"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "content://com.samsung.android.app.appsedge.data.AppsEdgeDataProvider"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "isEnablePinnedEdge"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "enablePinnedEdge"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v4, v3

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPinnedPanelRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPinnedPanelRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPinnedPanelRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPinnedPanelRunning:Z

    return v0
.end method

.method public registerSettingsContentObserver()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPanelModeSettingsCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    const/4 v2, 0x0

    const-string v3, "panel_mode"

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->addSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public setStateChangeListener(Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mStateChangeListener:Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge$StateChangeListener;

    return-void
.end method

.method public unregisterSettingsContentObserver()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/util/PinnedEdge;->mPanelModeSettingsCallback:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->removeSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;)Z

    return-void
.end method
