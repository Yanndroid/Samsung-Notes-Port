.class public Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mHash:Ljava/lang/String;

.field private mMime:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mHash:Ljava/lang/String;

    iput-wide p3, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mSize:J

    iput-object p5, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mMime:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mMime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/activity/ContentInfo;->mSize:J

    return-wide v0
.end method
