.class public Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dataQuota:I

.field private dataUsed:I

.field private loadedSize:I

.field private wifiQuota:I

.field private wifiUsed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataQuota()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataQuota:I

    return v0
.end method

.method public getDataUsed()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataUsed:I

    return v0
.end method

.method public getLoadedSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->loadedSize:I

    return v0
.end method

.method public getWifiQuota()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiQuota:I

    return v0
.end method

.method public getWifiUsed()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiUsed:I

    return v0
.end method

.method public setDataQuota(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataQuota:I

    return-void
.end method

.method public setDataUsed(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->dataUsed:I

    return-void
.end method

.method public setLoadedSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->loadedSize:I

    return-void
.end method

.method public setWifiQuota(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiQuota:I

    return-void
.end method

.method public setWifiUsed(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/AppQuota;->wifiUsed:I

    return-void
.end method
