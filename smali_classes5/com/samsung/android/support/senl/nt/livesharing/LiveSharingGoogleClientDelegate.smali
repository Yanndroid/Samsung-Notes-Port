.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;,
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;
    }
.end annotation


# static fields
.field private static final APPLICATION_NAME:Ljava/lang/String; = "samsung-notes"

.field private static final TAG:Ljava/lang/String; = "LS$LiveSharingGoogleClientDelegate"


# instance fields
.field private mCallerMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

.field private mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

.field private mCoDoingSession:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/CoDoingSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoDoingSessionDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;

.field private mExecutorService:Ljava/util/concurrent/Executor;

.field private final mInnerMeetingDisconnectHandler:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;

.field private final mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

.field private mLiveSharingMeetingInfo:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/livesharing/LiveSharingClientFactory;->getClient()Lcom/google/android/livesharing/LiveSharingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingMeetingInfo:Ljava/util/Optional;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mInnerMeetingDisconnectHandler:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSessionDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;

    return-void
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingMeetingInfo:Ljava/util/Optional;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingMeetingInfo:Ljava/util/Optional;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/google/android/livesharing/MeetingDisconnectHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCallerMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/livesharing/MeetingDisconnectHandler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCallerMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-object p1
.end method

.method private getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mExecutorService:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mExecutorService:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mExecutorService:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;",
            ")V"
        }
    .end annotation

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "beginCoDoing#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSessionDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$CoDoingSessionDelegateImpl;

    invoke-interface {p2, v0}, Lcom/google/android/livesharing/LiveSharingClient;->beginCoDoing(Lcom/google/android/livesharing/CoDoingSessionDelegate;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$3;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;",
            "Lcom/google/android/livesharing/MeetingDisconnectHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "connectMeeting# "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mInnerMeetingDisconnectHandler:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;

    const-string v2, "samsung-notes"

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/livesharing/LiveSharingClient;->connectMeeting(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "disconnectMeeting# "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    invoke-interface {v0}, Lcom/google/android/livesharing/LiveSharingClient;->disconnectMeeting()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$2;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "endCoDoing#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    invoke-interface {v0}, Lcom/google/android/livesharing/LiveSharingClient;->endCoDoing()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$4;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public getMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingMeetingInfo:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    return-object v0
.end method

.method public isCoDoing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingMeetingInfo:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "queryMeeting#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mLiveSharingClient:Lcom/google/android/livesharing/LiveSharingClient;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/livesharing/LiveSharingClient;->queryMeeting(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$5;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$5;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 3

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    const-string v1, "sendSharingData#"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSharingData# broadcastStateUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->mCoDoingSession:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/CoDoingSession;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getCoDoingState()Lcom/google/android/livesharing/CoDoingState;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/livesharing/CoDoingSession;->broadcastStateUpdate(Lcom/google/android/livesharing/CoDoingState;)V

    return-void
.end method
