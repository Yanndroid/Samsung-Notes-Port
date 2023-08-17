.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Address;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Address$Type;
    }
.end annotation


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DISPLAY_ADDRESS:Ljava/lang/String; = "display_addr"

.field public static final LABEL:Ljava/lang/String; = "label"

.field public static final NEIGHBORHOOD:Ljava/lang/String; = "neighborhood"

.field public static final POBOX:Ljava/lang/String; = "pobox"

.field public static final POST_CODE:Ljava/lang/String; = "post_code"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final STREET:Ljava/lang/String; = "street"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract;->access$000()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "buddy_addr"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/provider/BuddyContract$Address;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
