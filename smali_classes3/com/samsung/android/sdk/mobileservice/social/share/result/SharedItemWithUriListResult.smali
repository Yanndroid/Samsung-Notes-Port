.class public Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/common/result/Result;


# instance fields
.field private mResult:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;

.field private mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;->mResult:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;

    return-void
.end method


# virtual methods
.method public getResult()Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;->mResult:Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;

    return-object v0
.end method

.method public getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/SharedItemWithUriListResult;->mStatus:Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    return-object v0
.end method
