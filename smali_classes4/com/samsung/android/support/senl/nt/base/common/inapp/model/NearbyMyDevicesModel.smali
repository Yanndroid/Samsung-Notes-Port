.class public Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NearbyMyDevicesModel"


# instance fields
.field private final mNearbyMyDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    return-void
.end method

.method private checkNeedToUpdateMenu(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onUpdateMenuVisibility()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public deviceFound(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDeviceType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getModelName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, v1, v4, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onUpdateDeviceListDialog()V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceFound# size : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NearbyMyDevicesModel"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->checkNeedToUpdateMenu(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Z)V

    return-void
.end method

.method public deviceLost(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-interface {p2}, Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;->getBtMac()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;->onUpdateDeviceListDialog()V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceLost# size : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "NearbyMyDevicesModel"

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->checkNeedToUpdateMenu(Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevices$ContinuityMenuContract;Z)V

    return-void
.end method

.method public getNearbyMyDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    return-object v0
.end method

.method public hasNearbyMyDevices()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasNearbyMyDevices# NearbyMyDevices size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NearbyMyDevicesModel"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;->mNearbyMyDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
