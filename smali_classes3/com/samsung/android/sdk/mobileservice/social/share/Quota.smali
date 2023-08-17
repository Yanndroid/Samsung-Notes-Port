.class public Lcom/samsung/android/sdk/mobileservice/social/share/Quota;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
    }
.end annotation


# instance fields
.field private mIsUnlimited:Z

.field private mLimitCountUsage:J

.field private mLimitType:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

.field private mLimitUsage:J

.field private mTotalCountUsage:J

.field private mTotalUsage:J


# direct methods
.method public constructor <init>(JJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalCountUsage:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitCountUsage:J

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitType:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalUsage:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitUsage:J

    iput-boolean p5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mIsUnlimited:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;JJJJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalCountUsage:J

    iput-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitCountUsage:J

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;->SIZE:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitType:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    iput-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalUsage:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitUsage:J

    iput-wide p6, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalCountUsage:J

    iput-wide p8, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitCountUsage:J

    iput-boolean p10, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mIsUnlimited:Z

    return-void
.end method


# virtual methods
.method public getLimitCountUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitCountUsage:J

    return-wide v0
.end method

.method public getLimitType()Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitType:Lcom/samsung/android/sdk/mobileservice/social/share/Quota$LimitType;

    return-object v0
.end method

.method public getLimitUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mLimitUsage:J

    return-wide v0
.end method

.method public getTotalCountUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalCountUsage:J

    return-wide v0
.end method

.method public getTotalUsage()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mTotalUsage:J

    return-wide v0
.end method

.method public isUnlimited()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/Quota;->mIsUnlimited:Z

    return v0
.end method
