.class public Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mItemFlags:I

.field private mSelectionArg:Ljava/lang/String;

.field private mSelectionType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mItemFlags:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;->getKeyword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mSelectionArg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyKey;->getType()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mSelectionType:I

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mItemFlags:I

    return p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mSelectionArg:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mSelectionType:I

    return p0
.end method


# virtual methods
.method public addItemFlags(I)Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mItemFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;->mItemFlags:I

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest;-><init>(Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$Builder;Lcom/samsung/android/sdk/mobileservice/social/buddy/request/BuddyInfoRequest$1;)V

    return-object v0
.end method
