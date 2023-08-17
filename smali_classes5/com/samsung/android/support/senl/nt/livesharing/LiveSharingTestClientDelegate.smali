.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientDelegate;
.implements Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;


# instance fields
.field private final mCallbackQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

.field private mCoDoingSession:Lcom/google/android/livesharing/CoDoingSession;

.field private final mExecutorService:Ljava/util/concurrent/Executor;

.field private mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

.field private mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

.field private mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mExecutorService:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/google/android/livesharing/LiveSharingMeetingInfo;)Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    return-object p1
.end method

.method public static synthetic access$102(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/livesharing/MeetingDisconnectHandler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Ljava/lang/Throwable;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->createTestThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;)Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/google/android/livesharing/CoDoingSession;)Lcom/google/android/livesharing/CoDoingSession;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingSession:Lcom/google/android/livesharing/CoDoingSession;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    return-object p1
.end method

.method private createTestClient(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    :cond_0
    return-void
.end method

.method private createTestThrowable()Ljava/lang/Throwable;
    .locals 2

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private runOnThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mExecutorService:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public beginCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)V
    .locals 0
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

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestStartCoDoing()V

    new-instance p2, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$4;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 0
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

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->createTestClient(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestConnect()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$1;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disconnectMeeting(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestDisconnect()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$2;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endCoDoing(Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestEndCoDoing()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$5;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMeetingInfo()Lcom/google/android/livesharing/LiveSharingMeetingInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public isCoDoing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingSession:Lcom/google/android/livesharing/CoDoingSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEndConnection(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingMeetingInfo:Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingSession:Lcom/google/android/livesharing/CoDoingSession;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/livesharing/MeetingDisconnectHandler;->onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mMeetingDisconnectHandler:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->release()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    :cond_1
    return-void
.end method

.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->runOnThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onQueryCoDoingState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingDelegate:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;->onStateQuery()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getCoDoingState()Lcom/google/android/livesharing/CoDoingState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestSendQueryCoDoingState(Lcom/google/android/livesharing/CoDoingState;)V

    return-void
.end method

.method public onStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->runOnThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->runOnThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback<",
            "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->createTestClient(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mLiveSharingTestClient:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->requestQueryMeeting()V

    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCallbackQueue:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendSharingData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->mCoDoingSession:Lcom/google/android/livesharing/CoDoingSession;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;->getCoDoingState()Lcom/google/android/livesharing/CoDoingState;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/livesharing/CoDoingSession;->broadcastStateUpdate(Lcom/google/android/livesharing/CoDoingState;)V

    return-void
.end method
