.class public Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFailCount:I

.field private final mPath:Ljava/lang/String;

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mPath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mFailCount:I

    iput-wide p3, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mFailCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/common/database/entity/ExternalFeedbackUrlDataEntity;->mTimestamp:J

    return-wide v0
.end method
