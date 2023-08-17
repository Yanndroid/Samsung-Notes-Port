.class public Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/group/provider/GroupMemberContract$GroupMember;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.social.group.member"

.field private static final AUTHORITY_URI:Ljava/lang/String; = "content://com.samsung.android.mobileservice.social.group.member"

.field public static final ID_TYPE_ACCOUNT_ID:I = 0x3

.field public static final ID_TYPE_DUID:I = 0x2

.field public static final ID_TYPE_GUID:I = 0x0

.field public static final ID_TYPE_MSISDN:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
