.class public Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyDevice"
.end annotation


# instance fields
.field public btMac:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public modelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->btMac:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->displayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->modelName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBtMac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->btMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->modelName:Ljava/lang/String;

    return-object v0
.end method
