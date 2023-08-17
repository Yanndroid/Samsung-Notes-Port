.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Info;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Info$ProfileType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEVICE_INDEX:Ljava/lang/String; = "device_idx"

.field public static final DUID:Ljava/lang/String; = "DUID"

.field public static final GUID:Ljava/lang/String; = "GUID"

.field public static final MSISDN:Ljava/lang/String; = "MSISDN"

.field public static final PROFILE_TYPE:Ljava/lang/String; = "profile_type"

.field public static final SIDS:Ljava/lang/String; = "SIDS"

.field public static final STATUS_MESSAGE:Ljava/lang/String; = "status_msg"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "buddy_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Info;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
