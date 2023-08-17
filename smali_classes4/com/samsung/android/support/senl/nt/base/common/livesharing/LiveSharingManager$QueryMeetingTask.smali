.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMeetingTask"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private final mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsHost:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueryCallbackInfo:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsHost:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mQueryCallbackInfo:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsHost:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;)Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mQueryCallbackInfo:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mQueryCallbackInfo:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    return-void
.end method

.method public getQueryCallbackInfo()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mQueryCallbackInfo:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryCallbackInfo;

    return-object v0
.end method

.method public isHost()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mIsHost:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "LS$LiveSharingManager"

    const-string v3, "QueryMeetingTask"

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->a(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;->mAppContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask$1;-><init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$QueryMeetingTask;J)V

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingClientWrapper;->queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V

    return-void
.end method
