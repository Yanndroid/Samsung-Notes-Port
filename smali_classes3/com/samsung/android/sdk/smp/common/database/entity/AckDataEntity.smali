.class public Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorMsg:Ljava/lang/String;

.field private final mFailCount:J

.field private final mPushtype:Ljava/lang/String;

.field private final mRequestId:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mRequestId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mTimestamp:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mFailCount:J

    iput-object p6, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mPushtype:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mErrorCode:Ljava/lang/String;

    iput-object p8, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mErrorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCount()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mFailCount:J

    return-wide v0
.end method

.method public getPushtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mPushtype:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/AckDataEntity;->mTimestamp:J

    return-wide v0
.end method
