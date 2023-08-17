.class public Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/Configuration$NetworkType;
    }
.end annotation


# instance fields
.field private auidType:I

.field private dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

.field private deviceId:Ljava/lang/String;

.field private enableAutoDeviceId:Z

.field private enableFastReady:Z

.field private enableUseInAppLogging:Z

.field private isAlwaysRunningApp:Z

.field private networkType:I

.field private trackingId:Ljava/lang/String;

.field private userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkType:I

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    iput v1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method


# virtual methods
.method public enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return-object p0
.end method

.method public enableFastReady(Z)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    return-object p0
.end method

.method public enableUseInAppLogging(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;I)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-object p0
.end method

.method public enableUseInAppLogging(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;I)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkType:I

    return-object p0
.end method

.method public getAuidType()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return v0
.end method

.method public getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->networkType:I

    return v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAlwaysRunningApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return v0
.end method

.method public isEnableAutoDeviceId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return v0
.end method

.method public isEnableFastReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableFastReady:Z

    return v0
.end method

.method public isEnableUseInAppLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    return v0
.end method

.method public setAlwaysRunningApp(Z)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return-object p0
.end method

.method public setAuidType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method

.method public setDbOpenHelper(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->dbOpenHelper:Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method
