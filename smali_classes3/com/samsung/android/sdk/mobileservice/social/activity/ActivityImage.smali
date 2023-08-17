.class public Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mActivityImageContentUri:Landroid/net/Uri;

.field private mGuid:Ljava/lang/String;

.field private mProfileImageContentUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mActivityId:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mActivityImageContentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mProfileImageContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mActivityImageContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ActivityImage;->mProfileImageContentUri:Landroid/net/Uri;

    return-object v0
.end method
