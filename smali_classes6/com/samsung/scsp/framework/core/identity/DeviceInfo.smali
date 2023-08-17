.class public Lcom/samsung/scsp/framework/core/identity/DeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final osVersion:Ljava/lang/String;

.field private final platformVersion:Ljava/lang/String;

.field private final simMcc:Ljava/lang/String;

.field private final simMnc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->simMcc:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->simMnc:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->osVersion:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->alias:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->platformVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->platformVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimMcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->simMcc:Ljava/lang/String;

    return-object v0
.end method

.method public getSimMnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/framework/core/identity/DeviceInfo;->simMnc:Ljava/lang/String;

    return-object v0
.end method
