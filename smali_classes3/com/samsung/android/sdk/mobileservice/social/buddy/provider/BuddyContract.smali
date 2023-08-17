.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$BuddyContactInfo;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$BuddyLookupColumns;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$BuddyLookup;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$ApplicationList;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$BusinessProfile;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Image;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Organization;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Event;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Address;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Email;,
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Info;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.mobileservice.social.buddy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.mobileservice.social.buddy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method
