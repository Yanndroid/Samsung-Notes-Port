.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;
.super Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedItemWithSCloudHashRequest"
.end annotation


# instance fields
.field private mContentName:Ljava/lang/String;

.field private mContentSize:J

.field private mHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;->mRequestType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;->setContentMimeType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->setHash(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemRequest;->setContentMimeType(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->setHash(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->setContentSize(J)V

    invoke-virtual {p0, p5}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->setContentName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mContentName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mContentSize:J

    return-wide v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public setContentName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mContentName:Ljava/lang/String;

    return-void
.end method

.method public setContentSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mContentSize:J

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SharedItemWithSCloudHashRequest;->mHash:Ljava/lang/String;

    return-void
.end method
