.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientBroadcastReceiver"
.end annotation


# instance fields
.field public mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;->valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/livesharing/TestConstant$ClientMethod;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$1;->$SwitchMap$com$samsung$android$support$senl$nt$livesharing$TestConstant$ClientMethod:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "data"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;-><init>([B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onQueryCoDoingState(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;-><init>([B)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p2, p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onSendData(Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingData;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onEndCoDoing()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onStartCoDoing()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onQueryMeeting()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onDisconnect()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientBroadcastReceiver;->mClientMethodDelegate:Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingTestServer$ClientMethodDelegate;->onConnect()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
