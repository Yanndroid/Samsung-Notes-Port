.class public Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mDirty:Z

.field private mHeight:I

.field private mPageId:Ljava/lang/String;

.field private mPageIndex:I

.field private mPageModifiedTime:J

.field private mRatio:F

.field private transient mThumbnailCreatedTime:J

.field private mThumbnailFilePath:Ljava/lang/String;

.field private transient mThumbnailHeight:Ljava/lang/Integer;

.field private transient mThumbnailRatio:F

.field private transient mThumbnailWidth:Ljava/lang/Integer;

.field private mWidth:I


# direct methods
.method private constructor <init>(IIIFLjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailHeight:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailCreatedTime:J

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageIndex:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mWidth:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mHeight:I

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mRatio:F

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailFilePath:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mDirty:Z

    iput-wide p8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageModifiedTime:J

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mRatio:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mDirty:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailHeight:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailCreatedTime:J

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageIndex:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mWidth:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mHeight:I

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->calcRatio(II)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mRatio:F

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;ZJ)V
    .locals 10

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->calcRatio(II)F

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;-><init>(IIIFLjava/lang/String;Ljava/lang/String;ZJ)V

    return-void
.end method

.method private static calcRatio(II)F
    .locals 0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mHeight:I

    return v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageIndex:I

    return v0
.end method

.method public getPageModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageModifiedTime:J

    return-wide v0
.end method

.method public getRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mRatio:F

    return v0
.end method

.method public getThumbnailCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailCreatedTime:J

    return-wide v0
.end method

.method public getThumbnailFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailRatio:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailHeight:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getThumbnailWidth()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailWidth:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailRatio:F

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailWidth:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mWidth:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mDirty:Z

    return v0
.end method

.method public setDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mDirty:Z

    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageId:Ljava/lang/String;

    return-void
.end method

.method public setPageIndex(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageIndex:I

    return-void
.end method

.method public setPageModifiedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageModifiedTime:J

    return-void
.end method

.method public setThumbnailFilePath(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailFilePath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailCreatedTime:J

    return-void
.end method

.method public setThumbnailRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailRatio:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dirty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mDirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " page Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " modifiedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageInfo;->mPageModifiedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
