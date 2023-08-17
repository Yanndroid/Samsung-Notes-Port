.class public Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final maxCountOfDelete:I

.field private final maxCountOfDeleteFromTrashBin:I

.field private final maxCountOfDownload:I

.field private final maxCountOfMoveToTrashBin:I

.field private final maxCountOfRestoreFromTrashBin:I

.field private final maxCountOfUpload:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfUpload:I

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDownload:I

    iput p3, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDelete:I

    iput p4, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfMoveToTrashBin:I

    iput p5, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfRestoreFromTrashBin:I

    iput p6, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDeleteFromTrashBin:I

    return-void
.end method


# virtual methods
.method public getMaxCountOfDelete()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDelete:I

    return v0
.end method

.method public getMaxCountOfDeleteFromTrashBin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDeleteFromTrashBin:I

    return v0
.end method

.method public getMaxCountOfDownload()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfDownload:I

    return v0
.end method

.method public getMaxCountOfMoveToTrashBin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfMoveToTrashBin:I

    return v0
.end method

.method public getMaxCountOfRestoreFromTrashBin()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfRestoreFromTrashBin:I

    return v0
.end method

.method public getMaxCountOfUpload()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/social/ShareLimit;->maxCountOfUpload:I

    return v0
.end method
