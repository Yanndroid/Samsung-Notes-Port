.class public Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/place/PlaceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceRequest"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBluetoothMacAddress:Ljava/lang/String;

.field private mBluetoothName:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mName:Ljava/lang/String;

.field private mPlaceType:I

.field private mWifiBssId:Ljava/lang/String;

.field private mWifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;-><init>(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mPlaceType:I

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mAddress:Ljava/lang/String;

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLatitude:D

    iput-wide p6, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLongitude:D

    iput-object p8, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiName:Ljava/lang/String;

    iput-object p9, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiBssId:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothName:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;-><init>(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v2, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;-><init>(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mPlaceType:I

    return v0
.end method

.method public getWifiBssId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiBssId:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothName:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLongitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPlaceType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mPlaceType:I

    return-void
.end method

.method public setWifiBssId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiBssId:Ljava/lang/String;

    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiName:Ljava/lang/String;

    return-void
.end method

.method public writeToBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mPlaceType:I

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mAddress:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLatitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mLongitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiName:Ljava/lang/String;

    const-string/jumbo v2, "wifi_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mWifiBssId:Ljava/lang/String;

    const-string/jumbo v2, "wifi_bss_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothName:Ljava/lang/String;

    const-string v2, "bluetooth_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/PlaceApi$PlaceRequest;->mBluetoothMacAddress:Ljava/lang/String;

    const-string v2, "bluetooth_mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
