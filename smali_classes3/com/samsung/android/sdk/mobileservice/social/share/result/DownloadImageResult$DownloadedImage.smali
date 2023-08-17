.class public Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadedImage"
.end annotation


# instance fields
.field private mHash:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mItemId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mHash:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mImageUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/result/DownloadImageResult$DownloadedImage;->mItemId:Ljava/lang/String;

    return-object v0
.end method
