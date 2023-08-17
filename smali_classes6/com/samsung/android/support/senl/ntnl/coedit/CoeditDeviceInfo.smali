.class public Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_construct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    return-void
.end method

.method private native CoeditDeviceInfo_construct()J
.end method

.method private native CoeditDeviceInfo_finalize(J)V
.end method

.method private native CoeditDeviceInfo_getDeviceId(J)Ljava/lang/String;
.end method

.method private native CoeditDeviceInfo_getUserId(J)Ljava/lang/String;
.end method

.method private native CoeditDeviceInfo_isConnected(J)Z
.end method

.method private native CoeditDeviceInfo_isPermissionGranted(J)Z
.end method

.method private native CoeditDeviceInfo_setConnected(JZ)V
.end method

.method private native CoeditDeviceInfo_setDeviceId(JLjava/lang/String;)V
.end method

.method private native CoeditDeviceInfo_setPermissionGranted(JZ)V
.end method

.method private native CoeditDeviceInfo_setUserId(JLjava/lang/String;)V
.end method


# virtual methods
.method public finalize()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_finalize(J)V

    iput-wide v2, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_getDeviceId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_getUserId(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_isConnected(J)Z

    move-result v0

    return v0
.end method

.method public isPermissionGranted()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_isPermissionGranted(J)Z

    move-result v0

    return v0
.end method

.method public setConnected(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_setConnected(JZ)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_setDeviceId(JLjava/lang/String;)V

    return-void
.end method

.method public setPermissionGranted(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_setPermissionGranted(JZ)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->mHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->CoeditDeviceInfo_setUserId(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPermissionGranted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/ntnl/coedit/CoeditDeviceInfo;->isPermissionGranted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
