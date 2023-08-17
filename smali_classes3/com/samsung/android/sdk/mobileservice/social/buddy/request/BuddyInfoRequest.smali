.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_ITEM:I = 0x1

.field public static final SYNCED_CONTACT_ITEM:I = 0x2


# instance fields
.field private mItemFlags:I

.field private mSelectionArg:Ljava/lang/String;

.field private mSelectionType:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->access$000(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mItemFlags:I

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->access$100(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mSelectionArg:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->access$200(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mSelectionType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getItemFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mItemFlags:I

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mItemFlags:I

    const-string v2, "ITEMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mSelectionType:I

    const-string v2, "SELECTION_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;->mSelectionArg:Ljava/lang/String;

    const-string v2, "SELECTION_ARG"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
