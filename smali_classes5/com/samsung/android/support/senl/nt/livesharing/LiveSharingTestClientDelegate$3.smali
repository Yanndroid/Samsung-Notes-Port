.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->queryMeeting(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->access$200(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$3;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;

    check-cast p1, Lcom/google/android/livesharing/LiveSharingMeetingInfo;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
