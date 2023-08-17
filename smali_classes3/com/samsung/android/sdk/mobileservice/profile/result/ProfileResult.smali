.class public Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/common/result/Result;


# instance fields
.field private mResult:Lcom/samsung/android/sdk/mobileservice/profile/Profile;

.field private mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/profile/Profile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileResult;->mResult:Lcom/samsung/android/sdk/mobileservice/profile/Profile;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/samsung/android/sdk/mobileservice/profile/Profile;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileResult;->mResult:Lcom/samsung/android/sdk/mobileservice/profile/Profile;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/result/ProfileResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    return-object v0
.end method
