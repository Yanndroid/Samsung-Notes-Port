.class public Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentFileBytes:J

.field private mCurrentFileBytesTransferred:J

.field private mCurrentFileIndex:I

.field private mTotalBytes:J

.field private mTotalBytesTransferred:J

.field private mTotalFileCount:I

.field private mTotalFileCountTransferred:I


# direct methods
.method public constructor <init>(JJIIJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalBytes:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalBytesTransferred:J

    iput p5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalFileCount:I

    iput p6, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalFileCountTransferred:I

    iput-wide p7, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileBytes:J

    iput-wide p9, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileBytesTransferred:J

    iput p11, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileIndex:I

    return-void
.end method


# virtual methods
.method public getCurrentFileBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileBytes:J

    return-wide v0
.end method

.method public getCurrentFileBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileBytesTransferred:J

    return-wide v0
.end method

.method public getCurrentFileIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mCurrentFileIndex:I

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalBytes:J

    return-wide v0
.end method

.method public getTotalBytesTransferred()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalBytesTransferred:J

    return-wide v0
.end method

.method public getTotalFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalFileCount:I

    return v0
.end method

.method public getTotalFileCountTransferred()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/ShareSnapshot;->mTotalFileCountTransferred:I

    return v0
.end method
