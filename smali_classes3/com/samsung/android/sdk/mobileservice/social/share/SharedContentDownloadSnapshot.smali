.class public Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCurrentFileBytes:J

.field private mCurrentFileBytesReceived:J

.field private mCurrentFileIndex:I

.field private mTotalBytes:J

.field private mTotalBytesReceived:J

.field private mTotalFileCount:I

.field private mTotalFileCountReceived:I


# direct methods
.method public constructor <init>(JJIIJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalBytes:J

    iput-wide p3, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalBytesReceived:J

    iput p5, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalFileCount:I

    iput p6, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalFileCountReceived:I

    iput-wide p7, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileBytes:J

    iput-wide p9, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileBytesReceived:J

    iput p11, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileIndex:I

    return-void
.end method


# virtual methods
.method public getCurrentFileBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileBytes:J

    return-wide v0
.end method

.method public getCurrentFileBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileBytesReceived:J

    return-wide v0
.end method

.method public getCurrentFileIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mCurrentFileIndex:I

    return v0
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalBytes:J

    return-wide v0
.end method

.method public getTotalBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalBytesReceived:J

    return-wide v0
.end method

.method public getTotalFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalFileCount:I

    return v0
.end method

.method public getTotalFileCountReceived()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/mobileservice/social/share/SharedContentDownloadSnapshot;->mTotalFileCountReceived:I

    return v0
.end method
