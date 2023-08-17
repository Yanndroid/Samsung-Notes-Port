.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;
.super Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceWithSCloudHashRequest"
.end annotation


# instance fields
.field private mCoverImageName:Ljava/lang/String;

.field private mCoverImageSize:J

.field private mHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoverImageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mCoverImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImageSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mCoverImageSize:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public setCoverImageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mCoverImageName:Ljava/lang/String;

    return-void
.end method

.method public setCoverImageSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mCoverImageSize:J

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithSCloudHashRequest;->mHash:Ljava/lang/String;

    return-void
.end method
