.class Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/livesharing/MeetingDisconnectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->connectMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;Lcom/google/android/livesharing/MeetingDisconnectHandler;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$ErrorState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V
    .locals 2
    .param p1    # Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->f(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/livesharing/MeetingDisconnectHandler;

    invoke-interface {v1, p1}, Lcom/google/android/livesharing/MeetingDisconnectHandler;->onMeetingEnded(Lcom/google/android/livesharing/MeetingDisconnectHandler$EndReason;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->i(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->j(Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;)V

    return-void
.end method
