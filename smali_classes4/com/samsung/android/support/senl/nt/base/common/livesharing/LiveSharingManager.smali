.class public Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$TipCardCallback;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;,
        Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;
    }
.end annotation


# static fields
.field public static DIALOG:I = 0x1

.field public static final DIALOG_CANCEL_BUTTON:I = -0x3

.field public static final DIALOG_SELECT_NOTE_BUTTON:I = -0x1

.field public static final EXTRA_IS_HOST:Ljava/lang/String; = "I_AM_HOST"

.field public static final EXTRA_IS_SELECT_NOTE_MENU:Ljava/lang/String; = "SELECT_NOTE"

.field public static NONE:I = -0x1

.field private static final QUERY_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "LS$LiveSharingManager"

.field public static TIPCARD_GUEST:I = 0x3

.field public static TIPCARD_HOST:I = 0x2

.field private static mInstance:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;


# instance fields
.field private mCaller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

.field private final mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

.field private final mCoDoingDelegates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mCoEditNoteUuid:Ljava/lang/String;

.field private mConnectionConfirmDialog:Landroid/app/Dialog;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mInvitationLink:Ljava/lang/String;

.field private mIsCanceled:Z

.field private mLastQueryMeetingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

.field private mLiveSharingDisconnectionListener:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

.field private final mMeetingDisconnectHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTipCardType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoDoingDelegates:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->NONE:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mTipCardType:I

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;->NONE:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCaller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "LS$LiveSharingManager"

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoDoingDelegates:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mConnectionConfirmDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private cancelQuery()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mConnectionConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mConnectionConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelQuery# mConnectionConfirmDialog error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LS$LiveSharingManager"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mConnectionConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method private createConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInvitationLink:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLiveSharingDisconnectionListener:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mConnectionConfirmDialog:Landroid/app/Dialog;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInstance:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->onDialogClickSALogging(ZI)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->onEndMeeting()V

    return-void
.end method

.method private isConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->getLastMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/livesharing/LiveSharingMeetingInfo;->meetingStatus()Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    move-result-object v0

    sget-object v2, Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;->NOT_CONNECTED:Lcom/google/android/livesharing/LiveSharingMeetingInfo$MeetingStatus;

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupported()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->releaseLiveSharingDisconnectionListener()V

    return-void
.end method

.method private onDialogClickSALogging(ZI)V
    .locals 1

    const/4 v0, -0x3

    if-eqz p1, :cond_2

    const-string p1, "690"

    if-ne p2, v0, :cond_0

    const-string p2, "7674"

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const-string p2, "7673"

    goto :goto_0

    :cond_1
    const-string p2, "7672"

    goto :goto_0

    :cond_2
    const-string p1, "691"

    if-ne p2, v0, :cond_3

    const-string p2, "7675"

    goto :goto_0

    :cond_3
    const-string p2, "7676"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onEndMeeting()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoDoingDelegates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setCoEditNoteUuid(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setInvitationLink(Ljava/lang/String;)V

    return-void
.end method

.method private releaseLiveSharingDisconnectionListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLiveSharingDisconnectionListener:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    if-eqz v0, :cond_0

    const-string v0, "LS$LiveSharingManager"

    const-string v1, "releaseLiveSharingDisconnectionListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLiveSharingDisconnectionListener:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    return-void
.end method

.method public static runLiveSharingActivity(Landroid/app/Activity;ZZ)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getLiveSharingActivityClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    if-nez v0, :cond_0

    const-string v0, "runLiveSharingActivity# return - activity is null"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    const-string v0, "runLiveSharingActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getLiveSharingActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "I_AM_HOST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string p1, "SELECT_NOTE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;",
            ")",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$4;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$5;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoDoingDelegates:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    invoke-virtual {p2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$3;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectMeeting# disconnectResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public disconnectMeeting(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectMeeting# uuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CoEditNoteUuid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;->NONE:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    return-object p1
.end method

.method public getNotNow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    return v0
.end method

.method public getTipCardType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mTipCardType:I

    return v0
.end method

.method public isCoEditing()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->isOpen(Ljava/lang/String;Landroidx/fragment/app/Fragment;)Z

    move-result v0

    return v0
.end method

.method public isCoEditingNote(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public registerMeetingDisconnectHandler(Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMeetingDisconnectHandler# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeCoDoingDelegate(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoDoingDelegates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestQueryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/RequestToSyncManager;->isSesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->NOT_SUPPORTED:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isConnected()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isSupported()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestQueryMeeting# CALLER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", connected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", supported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", canceled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LS$LiveSharingManager"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->releaseLiveSharingDisconnectionListener()V

    if-nez v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->NOT_SUPPORTED:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->ALREADY_CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCaller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    if-ne v0, p2, :cond_3

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCaller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestQueryMeeting# hashCode : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->cancelQuery()V

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-direct {v2, v3, p3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;-><init>(ILcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallback;)V

    invoke-direct {p2, p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    sget-object p1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;->SUCCESS:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingResult;

    return-object p1
.end method

.method public sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;

    move-result-object p1

    return-object p1
.end method

.method public setCanceled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCanceled# caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCaller:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$Caller;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    return-void
.end method

.method public setCoEditNoteUuid(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    const-string v1, "LS$LiveSharingManager"

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoEditNoteUuid# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const-string v0, "setCoEditNoteUuid# clear"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCoEditNoteUuid# unexpected case: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mCoEditNoteUuid:Ljava/lang/String;

    return-void
.end method

.method public setInvitationLink(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInvitationLink:Ljava/lang/String;

    const-string v1, "LS$LiveSharingManager"

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvitationLink# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const-string v0, "setInvitationLink# clear"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvitationLink# unexpected case: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getCallee([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mInvitationLink:Ljava/lang/String;

    return-void
.end method

.method public setLiveSharingDisconnectionListener(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;)V
    .locals 2

    const-string v0, "LS$LiveSharingManager"

    const-string v1, "setLiveSharingDisconnectionListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLiveSharingDisconnectionListener:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$LiveSharingDisconnectionListener;

    return-void
.end method

.method public setTipCardType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTipCardType# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mTipCardType:I

    return-void
.end method

.method public showConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isSupported()Z

    move-result v0

    const-string v1, "LS$LiveSharingManager"

    if-nez v0, :cond_0

    const-string p1, "showConfirmDialog# return - LiveSharingManager is not supported"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    if-eqz v0, :cond_1

    const-string p1, "showConfirmDialog# mIsCanceled true"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->createConfirmDialog(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_2

    const-string p1, "690"

    const-string p2, "7670"

    goto :goto_0

    :cond_2
    const-string p1, "691"

    const-string p2, "7671"

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopQueryMeeting(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mIsCanceled:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->getQueryCallbackInfo()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mLastQueryMeetingTask:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->getQueryCallbackInfo()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;->mHashCode:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopQueryMeeting# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->cancelQuery()V

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterMeetingDisconnectHandler(Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterMeetingDisconnectHandler# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->mMeetingDisconnectHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
