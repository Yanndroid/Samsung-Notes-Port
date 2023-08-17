.class public Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMember"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember$Status;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "authority"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXPIRED_TIME:Ljava/lang/String; = "expiredTime"

.field public static final GROUP_ID:Ljava/lang/String; = "groupId"

.field public static final GUID:Ljava/lang/String; = "guid"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field public static final INVITATION_TYPE:Ljava/lang/String; = "invitationType"

.field public static final INVITE_TYPE:Ljava/lang/String; = "inviteType"

.field public static final MSISDN:Ljava/lang/String; = "msisdn"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final THUMBNAIL_LOCAL_PATH:Ljava/lang/String; = "thumbnailLocalPath"

.field public static final UPDATED_TIME:Ljava/lang/String; = "updatedTime"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.group.member/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
