.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo$Capability;
    }
.end annotation


# instance fields
.field private mCapabilityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo$Capability;",
            ">;"
        }
    .end annotation
.end field

.field private mImage:[B

.field private mImageType:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mStatusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo$Capability;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mPhoneNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mStatusMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mImage:[B

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mImageType:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mCapabilityList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCapabilityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo$Capability;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mCapabilityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImage()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mImage:[B

    return-object v0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mImageType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/PublicBuddyInfo;->mStatusMessage:Ljava/lang/String;

    return-object v0
.end method
