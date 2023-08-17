.class Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;,
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;,
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;,
        Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Callback;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mMethod:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

.field public mServerBroadcastReceiver:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "livesharing.server.action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;

    invoke-direct {v1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerMethodDelegate;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mServerBroadcastReceiver:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;-><init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mMethod:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    return-void
.end method


# virtual methods
.method public getMethod()Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mMethod:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;

    return-object v0
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mServerBroadcastReceiver:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$ServerBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    return-void
.end method
