.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Method"
.end annotation


# static fields
.field private static final TEST_APP_PACKAGE:Ljava/lang/String; = "com.samsung.android.support.senl.nt.livesharing"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "livesharing.client.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.support.senl.nt.livesharing"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public requestConnect()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->CONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestDisconnect()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->DISCONNECT:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestEndCoDoing()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->END_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestQueryMeeting()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->QUERY_MEETING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestSendData(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->SEND_DATA:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoDoingState;->state()[B

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestSendQueryCoDoingState(Lcom/google/android/livesharing/CoDoingState;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->SEND_QUERY_CO_DOING_STATE:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/android/livesharing/CoDoingState;->state()[B

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestStartCoDoing()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->createIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->START_CO_DOING:Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient$Method;->this$0:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
