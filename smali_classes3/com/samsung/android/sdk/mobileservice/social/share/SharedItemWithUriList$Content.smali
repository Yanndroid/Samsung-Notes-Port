.class public Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHash:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mOriginalContentPath:Ljava/lang/String;

.field private mSize:J

.field private mThumbnailFileUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mHash:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mMimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mThumbnailFileUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mFileName:Ljava/lang/String;

    iput-wide p5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mSize:J

    iput-object p7, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mOriginalContentPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalContentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mOriginalContentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mSize:J

    return-wide v0
.end method

.method public getThumbnailFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItemWithUriList$Content;->mThumbnailFileUri:Landroid/net/Uri;

    return-object v0
.end method
