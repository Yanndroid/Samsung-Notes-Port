.class public Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGuid:Ljava/lang/String;

.field private mImageContentUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mImageContentUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mImageContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getImageContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mImageContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/feedback/UserProfile;->mName:Ljava/lang/String;

    return-object v0
.end method
