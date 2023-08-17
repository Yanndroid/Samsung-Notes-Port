.class public Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_ADDITIONAL:I = 0x5

.field public static final PRIORITY_CRITICAL:I = 0x1

.field public static final PRIORITY_INFORMATION:I = 0x3

.field public static final PRIORITY_NEED_TO_FIX:I = 0x4

.field public static final PRIORITY_NONE:I = 0x0

.field public static final PRIORITY_USER_INTERACTION:I = 0x2

.field public static final TIP_CARD_APP_UPDATE_FOR_SYNC:I = 0x10000

.field public static final TIP_CARD_CAN_NOT_SYNC_OVER_1GB:I = 0x200

.field public static final TIP_CARD_CAN_NOT_SYNC_WIFI_ONLY:I = 0x4000

.field public static final TIP_CARD_CATEGORY_SUGGESTION:I = 0x80000

.field public static final TIP_CARD_CLOUD_SERVER_STORAGE_EXCEEDS:I = 0x2000

.field public static final TIP_CARD_CONVERT_NOTES:I = 0x200000

.field public static final TIP_CARD_CONVERT_SUGGESTION:I = 0x100000

.field public static final TIP_CARD_EMAIL_INVALID_ERROR:I = 0x8000

.field public static final TIP_CARD_EXTERNAL_STORAGE_NOT_GRANTED:I = 0x2000000

.field public static final TIP_CARD_FAIL_TO_CONVERT_STORAGE_ERROR:I = 0x400000

.field public static final TIP_CARD_FAIL_TO_IMPORT_DEVICE_STORAGE_FULL:I = 0x8

.field public static final TIP_CARD_FAIL_TO_IMPORT_NETWORK_ERROR:I = 0x4

.field public static final TIP_CARD_FAIL_TO_IMPORT_SERVER_ERROR:I = 0x2

.field public static final TIP_CARD_FAIL_TO_SYNC_NETWORK_ERROR:I = 0x40

.field public static final TIP_CARD_FAIL_TO_SYNC_NOT_ENOUGH_DEVICE_STORAGE:I = 0x80

.field public static final TIP_CARD_FAIL_TO_SYNC_SERVER_BLOCKING:I = 0x100

.field public static final TIP_CARD_FAIL_TO_SYNC_SERVER_ERROR:I = 0x20

.field public static final TIP_CARD_IMPORT_DOWNLOADING:I = 0x1

.field public static final TIP_CARD_IMPORT_NOTE_FROM_ACCOUNT:I = 0x40000

.field public static final TIP_CARD_IMPORT_PDF:I = 0x4000000

.field public static final TIP_CARD_IMPORT_SAMSUNG_NOTES:I = 0x1000000

.field public static final TIP_CARD_MEET:I = 0x10000000

.field public static final TIP_CARD_MICROSOFT_ACCOUNT_LOGIN:I = 0x800000

.field public static final TIP_CARD_MICROSOFT_ACCOUNT_LOGIN_AGAIN:I = 0x8000000

.field public static final TIP_CARD_NOT_ENOUGH_CLOUD_STORAGE:I = 0x10

.field public static final TIP_CARD_NOT_ENOUGH_CLOUD_STORAGE_IN_SETTINGS:I = 0x800

.field public static final TIP_CARD_PERMISSION_NOT_GRANTED:I = 0x400

.field public static final TIP_CARD_SHARE_FAIL_TO_SHARE_NOTE:I = 0x1000

.field public static final TIP_CARD_UNKNOWN:I


# instance fields
.field public mBodyResourceId:I

.field private final mNegativeButtonResourceId:I

.field private final mPositiveButtonResourceId:I

.field private final mPriority:I

.field private final mTitleResourceId:I

.field private final mType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mType:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mTitleResourceId:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPositiveButtonResourceId:I

    iput p5, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mNegativeButtonResourceId:I

    iput p6, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)I
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    iget p1, p1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->compareTo(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    iget v2, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mType:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mType:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mTitleResourceId:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mTitleResourceId:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mNegativeButtonResourceId:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mNegativeButtonResourceId:I

    if-ne v2, v3, :cond_2

    iget v2, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPositiveButtonResourceId:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPositiveButtonResourceId:I

    if-ne v2, v3, :cond_2

    iget v0, v0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getBodyResource()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeButtonResource()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mNegativeButtonResourceId:I

    return v0
.end method

.method public getNeutralButtonResourceId()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->tipcard_button_not_now:I

    return v0
.end method

.method public getPositiveButtonResource()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPositiveButtonResourceId:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mPriority:I

    return v0
.end method

.method public getTitleResource()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mTitleResourceId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isProgressTipCard()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mType:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_1

    const/high16 v2, 0x200000

    if-eq v2, v0, :cond_1

    const/high16 v2, 0x1000000

    if-eq v2, v0, :cond_1

    const/high16 v2, 0x4000000

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
