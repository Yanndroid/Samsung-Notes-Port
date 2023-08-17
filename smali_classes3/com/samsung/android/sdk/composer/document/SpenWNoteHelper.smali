.class public Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_init(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_init(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    return-void
.end method

.method private static native Native_finalize(J)V
.end method

.method private static native Native_getPageIndex(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
.end method

.method private static native Native_getPageIndexById(JLjava/lang/String;)I
.end method

.method private static native Native_getPageIndexByXY(JFF)I
.end method

.method private static native Native_getPageIndexClosedByX(JF)I
.end method

.method private static native Native_getPageIndexClosedByY(JF)I
.end method

.method private static native Native_getPageIndexListByRect(JLandroid/graphics/RectF;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method private static native Native_init(Z)J
.end method

.method private static native Native_setDocument(JJ)V
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_finalize(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    return-wide v0
.end method

.method public getPageIndex(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndex(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;)I

    move-result p1

    return p1
.end method

.method public getPageIndexById(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndexById(JLjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getPageIndexByXY(FF)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndexByXY(JFF)I

    move-result p1

    return p1
.end method

.method public getPageIndexClosedByX(F)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndexClosedByX(JF)I

    move-result p1

    return p1
.end method

.method public getPageIndexClosedByY(F)I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndexClosedByY(JF)I

    move-result p1

    return p1
.end method

.method public getPageIndexListByRect(Landroid/graphics/RectF;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_getPageIndexListByRect(JLandroid/graphics/RectF;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->handle:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->Native_setDocument(JJ)V

    return-void
.end method
