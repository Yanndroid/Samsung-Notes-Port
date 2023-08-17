.class public Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;
.super Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->createIContinuitySdkCallback()Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Message;)V
    .locals 4

    const-string v0, "onCallback"

    const-string v1, "ContinuityCallbackManager"

    if-nez p1, :cond_0

    const-string p1, "null message"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getCallbackId(Landroid/os/Message;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid callbackId = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNetworkPolicyWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$300(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getPeerStatus(Landroid/os/Message;)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$400(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getSessionStatus(Landroid/os/Message;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$500(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getEvent(Landroid/os/Message;)I

    move-result v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityNearbyMyDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$000(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityNearbyMyDeviceWrapper;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    move-result v2

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$200(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Ljava/lang/String;BI)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageData(Landroid/os/Message;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;->access$100(Lcom/samsung/android/mcf/continuity/impl/ContinuityCallbackManager;Ljava/lang/String;[BB)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
