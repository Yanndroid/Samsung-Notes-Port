.class public Lcom/samsung/android/sdk/mobileservice/profile/Privacy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_BIRTHDAYS:Ljava/lang/String; = "birthdays"

.field public static final KEY_EMAIL_ADDRESSES:Ljava/lang/String; = "emailAddresses"

.field public static final KEY_EVENTS:Ljava/lang/String; = "events"

.field public static final KEY_GENDERS:Ljava/lang/String; = "genders"

.field public static final KEY_HEALTHS:Ljava/lang/String; = "healths"

.field public static final KEY_MESSENGER_ACCOUNTS:Ljava/lang/String; = "messengerAccounts"

.field public static final KEY_NAMES:Ljava/lang/String; = "names"

.field public static final KEY_NICKNAMES:Ljava/lang/String; = "nicknames"

.field public static final KEY_NOTES:Ljava/lang/String; = "notes"

.field public static final KEY_ORGANIZATIONS:Ljava/lang/String; = "organizations"

.field public static final KEY_PHONE_NUMBERS:Ljava/lang/String; = "phoneNumbers"

.field public static final KEY_PHOTOS:Ljava/lang/String; = "photos"

.field public static final KEY_PLACES:Ljava/lang/String; = "places"

.field public static final KEY_STATUS_MESSAGE:Ljava/lang/String; = "statusMessages"

.field public static final KEY_WEB_ADDRESSES:Ljava/lang/String; = "webAddresses"

.field public static final TYPE_CONTACT_OR_GROUP:I = 0x2

.field public static final TYPE_EVERYONE:I = 0x0

.field public static final TYPE_INVALID:I = -0x1

.field public static final TYPE_SELF:I = 0x1


# instance fields
.field private mPrivacyBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public read()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/profile/Privacy;->mPrivacyBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
