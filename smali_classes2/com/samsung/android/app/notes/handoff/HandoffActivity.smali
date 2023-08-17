.class public Lcom/samsung/android/app/notes/handoff/HandoffActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_PENDING_RECEIVE:I = 0x7530

.field private static final DELAY_SHOW_PROGRESS:I = 0x7d0

.field private static final KEY_NOTE_META_DATA:Ljava/lang/String; = "KEY_NOTE_META_DATA"

.field private static final TAG:Ljava/lang/String; = "HandoffActivity"


# instance fields
.field private mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

.field private mLockManager:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

.field private mNewNoteMetaData:Lorg/json/JSONObject;

.field private mSkipFlagForWiFiSyncOnlyAndNotWiFiConnected:Z

.field private mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

.field private mTimer:Ljava/util/Timer;

.field private mWifiSyncOnlyDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    iput-object v1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    return-object p0
.end method

.method private cancelTimer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "HandoffActivity"

    const-string v1, "cancelTimer# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_circle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private closeAllActivityInThisTask()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->closeAllInSameTask(Landroid/app/Activity;)V

    return-void
.end method

.method private createComposerIntent(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lorg/json/JSONObject;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/handoff/CoHandOffUtil;->getIntent(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->setMdeInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Landroid/content/Intent;)V

    return-object p2
.end method

.method private createLockManager(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$7;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->createLockManager(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerListener;)Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mLockManager:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

    return-void
.end method

.method private createTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->cancelTimer()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$1;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/android/app/notes/handoff/HandoffActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$2;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/app/notes/handoff/HandoffActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSkipFlagForWiFiSyncOnlyAndNotWiFiConnected:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSkipFlagForWiFiSyncOnlyAndNotWiFiConnected:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleComposer(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private handleComposer(Lorg/json/JSONObject;)Z
    .locals 9

    const-string v0, "activity_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isComposerData(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "HandoffActivity"

    const-string v2, "handleComposer#"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sdoc_uuid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->isNotAvailableToSync(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$4;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    new-instance v3, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$5;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showWiFiSyncOnlyAndNotWiFiConnected(Ljava/lang/ref/WeakReference;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog;

    return v5

    :cond_2
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->waitSyncNewNote(Lorg/json/JSONObject;Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;Ljava/lang/String;)V

    return v5

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "handleComposer# entry is deleted"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createComposerIntent(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Lorg/json/JSONObject;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v6

    invoke-virtual {v6, p0, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->hasComposerInSameTask(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleComposer# exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "handoff_data_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v5

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->closeAllActivityInThisTask()V

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    invoke-direct {p0, v3}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createLockManager(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mLockManager:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

    if-nez p1, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x6d

    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-interface {p1, p0, v0, v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;->verify(Landroid/app/Activity;ILandroid/content/Intent;[Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return v5
.end method

.method private handleMain(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getHandoffData(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    move-result-object p1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->closeAllActivityInThisTask()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActivityType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isMainData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartMain(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActivityType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createMainIntent(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "Main"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createMainIntent(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private hideSyncDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HandoffActivity"

    const-string v1, "hideSyncDialog# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->releaseNewNoteObserver()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleMain(Lorg/json/JSONObject;)V

    return-void
.end method

.method private isNotAvailableToSync(Lorg/json/JSONObject;)Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "settings_sync_notes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "sync_on"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showTurnOnSyncToast()V

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->getRequestSyncContract()Lcom/samsung/android/support/senl/nt/base/common/sync/RequestSyncContract;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object p1

    const/16 v0, 0x12d

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataCallNotLimitedForApp()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showConnectToNetwork()V

    return v1

    :cond_3
    return v2
.end method

.method private releaseNewNoteObserver()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    const-string v2, "sdoc_uuid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HandoffActivity"

    const-string v2, "hideSyncDialog# JSON Err"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setMdeInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HandoffActivity"

    const-string v1, "setMdeInfo#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_space_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_group_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_owner_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lv/f;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const-string v0, "account_type"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private updateAndSyncHandoff(Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->updateHandoffInfo()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "handoff"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->setNeedToHandoff(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->requestSyncHandoffData()V

    :cond_0
    return-void
.end method

.method private waitSyncNewNote(Lorg/json/JSONObject;Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;Ljava/lang/String;)V
    .locals 4

    const-string v0, "HandoffActivity"

    const-string/jumbo v1, "waitSyncNewNote# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->cancelTimer()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->closeAllActivityInThisTask()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    new-instance p1, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$6;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    iput-object v2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;->setPresenter(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$ISyncWaitingProgressDialogPresenter;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mSyncWaitingProgressDialog:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/SyncWaitingProgressDialog;

    invoke-virtual {p1, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    :goto_0
    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get_LiveData(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public createMainIntent(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getClassFromActivityType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.samsung.android.app.notes.handoff.ACTION_HANDOFF"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "handoffData"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mLockManager:Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManager;->onActivityResult(Landroidx/appcompat/app/AppCompatActivity;IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V
    .locals 3

    const-string v0, "HandoffActivity"

    if-nez p1, :cond_0

    const-string p1, "observer#onChanged# null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    const-string p1, "observer#onChanged# new"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleComposer(Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "JSON Err#"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleMain(Lorg/json/JSONObject;)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->hideSyncDialog()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->onChanged(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->handoff_activity:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    const-string v1, "HandoffActivity"

    if-nez v0, :cond_2

    const-string v0, "onCreate# handoff is disabled"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isUPSM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->handoff_can_not_use_in_power_saving_mode:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;IIZ)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffFixedStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->handleMain(Lorg/json/JSONObject;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    const-string v0, "onCreate# "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;->setHandoffContentObserverListener(Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver$HandoffContentObserverListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->registerContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p1, :cond_3

    const-string v0, "KEY_NOTE_META_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "onCreate# restore waiting sync"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->receive(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->updateAndSyncHandoff(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createTimer()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "HandoffActivity"

    const-string v1, "onDestroy# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mHandoffContentObserver:Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffContentObserver;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->cancelTimer()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->hideSyncDialog()V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mWifiSyncOnlyDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mWifiSyncOnlyDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mWifiSyncOnlyDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mWifiSyncOnlyDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->createTimer()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->hideSyncDialog()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->updateAndSyncHandoff(Landroid/content/Intent;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/app/notes/handoff/HandoffActivity;->mNewNoteMetaData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_NOTE_META_DATA"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public receive(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/handoff/HandoffActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/notes/handoff/HandoffActivity$3;-><init>(Lcom/samsung/android/app/notes/handoff/HandoffActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSuccess()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->updateHandoffInfo()V

    return-void
.end method
