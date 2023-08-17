.class public Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.source "SourceFile"


# static fields
.field private static final MSG_DISCONNECT:I = 0x1

.field private static final REQUEST_CHECK_READY_TO_SHARED_SERVICE:I = 0x383

.field private static final REQUEST_OPEN_NOTES_BY_LINK:I = 0x384

.field private static final REQUEST_SELECT_NOTE:I = 0x385

.field private static final REQUEST_SES_FORCE_UPDATE:I = 0x382

.field private static final TAG:Ljava/lang/String; = "LS$LiveSharingActivity"

.field private static final WAIT_FOR_NOTE_LINK_TIMEOUT:I = 0x2710


# instance fields
.field private mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

.field private mGroupId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHost:Z

.field private final mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

.field private mPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

.field private mSelectedUuid:Ljava/lang/String;

.field private mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

.field private mSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private beginCoDoing()V
    .locals 3

    const-string v0, "LS$LiveSharingActivity"

    const-string v1, "beginCoDoing"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    if-eq v0, v1, :cond_0

    const-string v0, "beginCoDoing fail"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private connectCoeditSession()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->initCoeditSession()V

    :cond_0
    const-string v0, "LS$LiveSharingActivity"

    const-string v1, "connectCoeditSession"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->releaseUpdatePeriod()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isWiFiSyncOnlyAndNotWiFiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "connectCoeditSession# return - wifi only"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->connect()Z

    return-void
.end method

.method private connectMeeting()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMeeting# isHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mIsHost:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->showProgress()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    if-eq v0, v1, :cond_0

    const-string v0, "connectMeeting fail"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private createCoeditNote()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group://Standalone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->co_edit_note_auto_title:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lu/e;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$CreateStandalone;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->setResultCallback(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$CoeditCreateResult;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->requestSpaceCreateWithLink(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;)V

    return-void
.end method

.method private disconnectMeeting()V
    .locals 2

    const-string v0, "LS$LiveSharingActivity"

    const-string v1, "disconnectMeeting"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-void
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mIsHost:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/google/android/livesharing/MeetingDisconnectHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object p0
.end method

.method private hideProgress()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_circle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LS$LiveSharingActivity"

    const-string v2, "hideProgress"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    return-object p0
.end method

.method private importErrorHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$12;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->disconnectMeeting()V

    return-void
.end method

.method private importNoteToSpace()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "importNoteToSpace# SelectedUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSelectedUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SpaceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$11;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler;->callable(Ljava/util/concurrent/Callable;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->executeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observe(Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/core/executor/NotesDataTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->observeOn(Ljava/util/concurrent/Executor;)Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/DataRepositoryScheduler$RequestBuilder;->execute()V

    return-void
.end method

.method private initCoeditSession()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    const-string v3, "LS$LiveSharingActivity"

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector$ActivityContract;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    return-void
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSelectedUuid:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSpaceId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->beginCoDoing()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectCoeditSession()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->createCoeditNote()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->disconnectMeeting()V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->hideProgress()V

    return-void
.end method

.method public static bridge synthetic s(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->importErrorHandler()V

    return-void
.end method

.method private sendNoteLink()Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mPickerInfo:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo;->getInvitationLink()Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->setNoteLink(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object v0

    return-object v0
.end method

.method private setCoeditInfo(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_space_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGroupId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_group_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mde_owner_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "writer_name"

    const-string v1, "test"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getMdeOwnerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v0

    invoke-virtual {v0}, Lv/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lv/f;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string v0, "account_type"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "lock_account_guid"

    const-string v0, "FROM_SHARED_NOTES_GUID"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method private showProgress()V
    .locals 3

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_circle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "LS$LiveSharingActivity"

    const-string v2, "showProgress"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showToast# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$13;-><init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startComposer()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mGroupId:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSpaceId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->importNoteToSpace()V

    return-void
.end method

.method public static bridge synthetic u(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->sendNoteLink()Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic v(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->startComposer()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/16 v1, 0x383

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectCoeditSession()V

    goto :goto_2

    :cond_0
    const/16 v1, 0x382

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->disconnectMeeting()V

    goto :goto_2

    :cond_2
    const/16 v1, 0x384

    if-ne p1, v1, :cond_5

    if-ne p2, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "com.samsung.android.action.MDE_START_NOTES_BY_MEET_URL"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x24000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->startActivityOfSameTask(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string p1, "REQUEST_OPEN_NOTES_BY_LINK fail"

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->showToast(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->disconnectMeeting()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x385

    if-ne p1, v1, :cond_8

    if-ne p2, v0, :cond_7

    if-nez p3, :cond_6

    const-string p1, ""

    goto :goto_0

    :cond_6
    const-string p1, "sdoc_uuid"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSelectedUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectMeeting()V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "LS$LiveSharingActivity"

    const-string v1, "onBackPressed# block back key"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$layout;->handoff_activity:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "LS$LiveSharingActivity"

    const-string v0, "onCreate# intent is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "I_AM_HOST"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mIsHost:Z

    const-string v0, "SELECT_NOTE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNotePickerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action_pick_notes_from_meeting"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x385

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->connectMeeting()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onDestroy()V

    const-string v0, "LS$LiveSharingActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->mSessionConnector:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnector;->disconnect()V

    :cond_0
    return-void
.end method

.method public onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewCoeditNote - groupId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", spaceId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", toolType : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LS$LiveSharingActivity"

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->newUUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCoEditNoteUuid(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sdoc_uuid"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "new_doc"

    invoke-virtual {v1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "mde_space_id"

    invoke-virtual {v1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "mde_group_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object p1

    invoke-virtual {p1}, Lv/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mde_owner_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "writer_name"

    const-string p2, "test"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "account_type"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "tool_type"

    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "Settings"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string p2, "settings_preferred_note_style"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "page_type"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    const-string p2, "category_id"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCoEditNoteUuid(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "sdoc_uuid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "doc_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getToolType()I

    move-result v2

    const-string v3, "tool_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getFolderUuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "category_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getGuid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lock_account_guid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getHighLightText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getHighLightText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "highlighttext"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getLockType()I

    move-result v2

    const-string v3, "lock_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;->getModeIndex()I

    move-result v2

    const-string v3, "mode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->hasComposerInSameTask(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->setCoeditInfo(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
