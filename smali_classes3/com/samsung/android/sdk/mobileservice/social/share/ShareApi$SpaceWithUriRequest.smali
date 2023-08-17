.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;
.super Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpaceWithUriRequest"
.end annotation


# instance fields
.field private mCoverImageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCoverImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;->mCoverImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setCoverImageUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$SpaceWithUriRequest;->mCoverImageUri:Landroid/net/Uri;

    return-void
.end method
