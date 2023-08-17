.class public Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createdTime:J

.field private expiredTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->createdTime:J

    iput-wide p4, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->expiredTime:J

    return-void
.end method


# virtual methods
.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->createdTime:J

    return-wide v0
.end method

.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->expiredTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/group/InvitationLink;->url:Ljava/lang/String;

    return-object v0
.end method
