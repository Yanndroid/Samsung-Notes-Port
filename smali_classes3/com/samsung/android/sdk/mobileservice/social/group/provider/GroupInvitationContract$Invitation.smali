.class public Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupInvitationContract$Invitation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupInvitationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invitation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupInvitationContract$Invitation$Type;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXPIRED_TIME:Ljava/lang/String; = "expiredTime"

.field public static final FEATURE_ID:Ljava/lang/String; = "featureId"

.field public static final GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final GROUP_NAME:Ljava/lang/String; = "groupName"

.field public static final GROUP_THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "groupThumbnailLocalPath"

.field public static final GROUP_TYPE:Ljava/lang/String; = "groupType"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final REQUESTED_TIME:Ljava/lang/String; = "requestedTime"

.field public static final REQUESTER_ID:Ljava/lang/String; = "requesterId"

.field public static final REQUESTER_NAME:Ljava/lang/String; = "requesterName"

.field public static final REQUESTER_THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "requesterThumbnailLocalPath"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.group.invitation/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupInvitationContract$Invitation;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
