.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lcom/google/android/livesharing/LiveSharingMeetingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

.field public final synthetic val$connectionListener:Lcom/google/android/livesharing/MeetingDisconnectHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$connectionListener:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMeeting#onFailure# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LS$LiveSharingGoogleClientDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$202(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectMeeting#onSuccess# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LS$LiveSharingGoogleClientDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$connectionListener:Lcom/google/android/livesharing/MeetingDisconnectHandler;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "no result"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$302(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/livesharing/MeetingDisconnectHandler;

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;->onSuccess(Lcom/google/android/livesharing/LiveSharingMeetingInfo;)V

    return-void
.end method
