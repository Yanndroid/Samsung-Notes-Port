.class Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;
.super Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuitySessionManager$PeerStatusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeerStatusChanged(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 3
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerStatusChanged# peerStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPeerStatusChanged# STATUS_PEER_CONNECTED"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->PEER_CONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->readyToInAppCollaboration(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPeerStatusChanged# STATUS_PEER_DISCONNECTED"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;->PEER_DISCONNECTED:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->setContinuityState(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityState;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onPeerStatusChanged# ConnectedDeviceBtMac is not same"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mConnectedDeviceBtMac:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeSession()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$1;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->a(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager$ContinuityActionContract;->closedInAppCollaboration()V

    :cond_2
    :goto_0
    return-void
.end method
