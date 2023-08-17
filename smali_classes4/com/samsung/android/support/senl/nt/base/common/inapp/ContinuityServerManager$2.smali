.class Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;
.super Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->startDiscovery(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscovered(ILcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 3
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getScreenState()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDiscovered# event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", displayName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modelName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getModelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", btState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContinuityServerManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->b(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->deviceLost(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x190

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->closeInAppCollaboration()Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    iget-object v0, p1, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServiceManager;->mNearbyMyDevicesModel:Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->b(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->deviceFound(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->correctConnectingDevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->b(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onReleaseDim()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager$2;->this$0:Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;->b(Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityServerManager;)Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onUpdateDeviceListDialog()V

    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
