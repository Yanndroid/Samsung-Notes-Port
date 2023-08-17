.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

.field public final synthetic val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

.field public final synthetic val$result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;->val$callback:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClientDelegate$6;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
