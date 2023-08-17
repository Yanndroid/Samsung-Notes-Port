.class public Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContainsMyNumber:Z

.field private final mMyPhoneNumber:Ljava/lang/String;

.field private final mServiceNumberCnt:I

.field private final mServiceNumberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mServiceNumberCnt:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mContainsMyNumber:Z

    if-nez p3, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mServiceNumberList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mServiceNumberList:Ljava/util/List;

    :goto_0
    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mMyPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public containsMyNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mContainsMyNumber:Z

    return v0
.end method

.method public getMyPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mMyPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceNumberCnt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mServiceNumberCnt:I

    return v0
.end method

.method public getServiceNumberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/result/ServiceNumber;->mServiceNumberList:Ljava/util/List;

    return-object v0
.end method
