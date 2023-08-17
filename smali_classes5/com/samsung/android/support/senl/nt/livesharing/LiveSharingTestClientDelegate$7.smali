.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->onFailure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$7;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;->onFailure()V

    return-void
.end method
