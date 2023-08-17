.class public Lcom/samsung/android/sdk/mobileservice/auth/DeviceAuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mImsi:Ljava/lang/String;

.field private mMsisdn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/DeviceAuthInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/auth/DeviceAuthInfo;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/DeviceAuthInfo;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/auth/DeviceAuthInfo;->mMsisdn:Ljava/lang/String;

    return-void
.end method
