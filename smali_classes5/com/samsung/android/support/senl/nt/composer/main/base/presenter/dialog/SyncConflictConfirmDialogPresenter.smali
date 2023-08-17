.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;
    }
.end annotation


# static fields
.field private static final FEATURE_USING_CHANGE_DOC:Z = false

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

.field private final mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLocalModifiedTime:J

.field private final mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

.field private mServerNoteInfoListener:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

.field private mServerNoteModifiedTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SyncConflictConfirmDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mLocalModifiedTime:J

    return-wide v0
.end method

.method private canUseSync()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isDataCallNotLimitedForApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v2, "canUseSync# isDataCallNotLimitedForApp is false"

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isWiFiSyncOnlyAndNotWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v2, "canUseSync# isWiFiSyncOnlyAndNotWiFiConnected is true"

    goto :goto_0

    :cond_1
    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v2, "settings_sync_notes"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v2, "canUseSync# SyncEnableMode is false"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isAutoSyncPossible()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v2, "canUseSync# AutoSyncPossible is false"

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteModifiedTime:J

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mLocalModifiedTime:J

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteModifiedTime:J

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->releaseServerNoteInfoListener()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->showDialog()V

    return-void
.end method

.method private releaseServerNoteInfoListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteInfoListener:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteInfoListener:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V

    :cond_0
    return-void
.end method

.method private requestServerNoteInfo()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteInfoListener:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteInfoListener:Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->requestServerNoteInfo(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/sync/IServerNoteInfoListener;)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mCreator:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IDialogCreator;->createConfirmSyncConflictDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private startCompareViewer(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    const-string v2, "com.samsung.android.support.senl.nt.composer.main.compare.CompareViewerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, p1, v4, v4}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4, v4}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoArgument;->KEY_BUNDLE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->CompareConflict:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastRequestCode(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public compare()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "compare# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->makeConflictTempDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->startCompareViewer(Ljava/lang/String;)V

    return-void
.end method

.method public findFragmentByTag(Landroid/app/Activity;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->findFragmentByTag(Landroid/app/Activity;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public findFragmentByTag(Landroid/app/Activity;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/DialogFragment;

    return-object p1
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;->finish(Ljava/lang/String;)Z

    return-void
.end method

.method public getDeviceNameForSyncConflicted()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDeviceNameForSyncConflicted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoteLocalTimeForSyncConflicted()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLastModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerNoteModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mServerNoteModifiedTime:J

    return-wide v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->findFragmentByTag(Landroid/app/Activity;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepCurrent()V
    .locals 9

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "SyncC:keepCur"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->mustAddFileLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->updateConflictStrategy(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SyncC:keepCur force save"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->mustAddFileLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->setDirty(Z)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->save(ZZZIZ)Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->restore()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->makeConflictTempDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "keepCurrent#remove temp note"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public onDetachView()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->releaseServerNoteInfoListener()V

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->onDetachView()V

    return-void
.end method

.method public replace(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "SyncC:replace"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->mustAddFileLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DocInfo;->getDocPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string p1, "sdocx was deleted"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_sync_delete_note:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p1, "replace"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;->showProgress(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->updateConflictStrategy(I)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->stopRecording()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->stopPlaying()Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setBlockedSave(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->setOnRemovedListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager$OnRemovedListener;)V

    return-void
.end method

.method public saveAsNewDocWithCurrentDoc()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "SyncC:keepBoth"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->mustAddFileLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mDialogPresenterManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$DialogPresenterManagerContract;->showProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->stopRecording()Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getVoiceModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->stopPlaying()Z

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$2;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/AbsDialogFragmentPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->canUseSync()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "show# canUseSync is false"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "show# dialog is already showing"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->requestServerNoteInfo()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/SyncConflictConfirmDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "show#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
