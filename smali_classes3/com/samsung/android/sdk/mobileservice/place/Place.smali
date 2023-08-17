.class public Lcom/samsung/android/sdk/mobileservice/place/Place;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/place/Place$SourceType;
    }
.end annotation


# static fields
.field public static final METHOD_TYPE_BT:I = 0x4

.field public static final METHOD_TYPE_MAP:I = 0x1

.field public static final METHOD_TYPE_MAP_WITH_WIFI:I = 0x3

.field public static final METHOD_TYPE_NONE:I = 0x0

.field public static final PLACE_TYPE_CAR:I = 0x3

.field public static final PLACE_TYPE_HOME:I = 0x1

.field public static final PLACE_TYPE_OTHERS:I = 0x4

.field public static final PLACE_TYPE_SCHOOL:I = 0x5

.field public static final PLACE_TYPE_WORK:I = 0x2


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBluetoothMacAddress:Ljava/lang/String;

.field private mBluetoothName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mLatitude:D

.field private mLongitude:D

.field private mName:Ljava/lang/String;

.field private mPlaceType:I

.field private mSourceType:I

.field private mUpdatedTime:J

.field private mWifiBssId:Ljava/lang/String;

.field private mWifiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/place/Place;->readFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method private readFromBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "place_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mId:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mName:Ljava/lang/String;

    const-string v0, "category"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mPlaceType:I

    const-string v0, "address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mAddress:Ljava/lang/String;

    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLatitude:D

    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLongitude:D

    const-string/jumbo v0, "wifi_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiName:Ljava/lang/String;

    const-string/jumbo v0, "wifi_bss_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiBssId:Ljava/lang/String;

    const-string v0, "bluetooth_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothName:Ljava/lang/String;

    const-string v0, "bluetooth_mac_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothMacAddress:Ljava/lang/String;

    const-string/jumbo v0, "time_stamp_utc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mUpdatedTime:J

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    return-void
.end method

.method private setUpdatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mUpdatedTime:J

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLongitude:D

    return-wide v0
.end method

.method public getMethodType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mPlaceType:I

    return v0
.end method

.method public getSourceType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    return v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mUpdatedTime:J

    return-wide v0
.end method

.method public getWifiBssId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiBssId:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiName:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLongitude:D

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPlaceType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mPlaceType:I

    return-void
.end method

.method public setSourceType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    return-void
.end method

.method public setWifiBssId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiBssId:Ljava/lang/String;

    return-void
.end method

.method public setWifiName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiName:Ljava/lang/String;

    return-void
.end method

.method public writeToBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mId:Ljava/lang/String;

    const-string v2, "place_key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mPlaceType:I

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mAddress:Ljava/lang/String;

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLatitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mLongitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiName:Ljava/lang/String;

    const-string/jumbo v2, "wifi_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mWifiBssId:Ljava/lang/String;

    const-string/jumbo v2, "wifi_bss_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothName:Ljava/lang/String;

    const-string v2, "bluetooth_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mBluetoothMacAddress:Ljava/lang/String;

    const-string v2, "bluetooth_mac_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mUpdatedTime:J

    const-string/jumbo v3, "time_stamp_utc"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/place/Place;->mSourceType:I

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/place/Place;->getMethodType()I

    move-result v1

    const-string v2, "location_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
