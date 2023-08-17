.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->onStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

.field public final synthetic val$liveSharingData:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;->val$liveSharingData:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->access$500(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;)Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$8;->val$liveSharingData:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/ILiveSharingClient$CoDoingDelegate;->onStateChanged(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    return-void
.end method
