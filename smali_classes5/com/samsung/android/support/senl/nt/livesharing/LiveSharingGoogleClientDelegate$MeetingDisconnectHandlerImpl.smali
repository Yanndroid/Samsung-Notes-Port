.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/MeetingDisconnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeetingDisconnectHandlerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)V

    return-void
.end method


# virtual methods
.method public onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 3
    .param p1    # Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "LS$LiveSharingGoogleClientDelegate"

    if-nez v0, :cond_0

    const-string p1, "onMeetingEnded# no meeting info"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeetingEnded# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$202(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$402(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Ljava/util/Optional;)Ljava/util/Optional;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$502(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$300(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/google/android/livesharing/MeetingDisconnectHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "onMeetingEnded# call onMeetingEnded"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$300(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;)Lcom/google/android/livesharing/MeetingDisconnectHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/livesharing/MeetingDisconnectHandler;->onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate$MeetingDisconnectHandlerImpl;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;

    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;->access$302(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingGoogleClientDelegate;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/google/android/livesharing/MeetingDisconnectHandler;

    :cond_1
    return-void
.end method
