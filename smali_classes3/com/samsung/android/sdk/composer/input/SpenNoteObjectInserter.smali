.class public Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenNoteObjectInserter"


# instance fields
.field private mNativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    return-void
.end method

.method private static native Native_adjustRectInPage(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/RectF;)Landroid/graphics/RectF;
.end method

.method private static native Native_getBodyObjectRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Landroid/graphics/RectF;
.end method

.method private static native Native_getBodyObjectRectList(JLjava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private static native Native_getInsertObjectMaxRect(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Z)Landroid/graphics/RectF;
.end method

.method private static native Native_getInsertObjectRect(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Landroid/graphics/RectF;
.end method

.method private static native Native_insertBodyText(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZZ)Z
.end method

.method private static native Native_insertObject(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation
.end method

.method private static native Native_insertObject(JLjava/util/ArrayList;FFZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;FFZZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation
.end method

.method private static native Native_insertTextObject(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;FFZ)Z
.end method

.method private static native Native_isObjectFitPageWidth(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private static native Native_isObjectValid(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method


# virtual methods
.method public adjustRectInPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_adjustRectInPage(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Adjust rect should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBodyObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Landroid/graphics/RectF;
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getBodyObjectRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getBodyObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Landroid/graphics/RectF;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getBodyObjectRect(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getBodyObjectRectList(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getBodyObjectRectList(JLjava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getBodyObjectRectList(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getBodyObjectRectList(JLjava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getInsertObjectMaxRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Z)Landroid/graphics/RectF;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getInsertObjectMaxRect(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Z)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid WPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method public getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Landroid/graphics/RectF;
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_getInsertObjectRect(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid WPage or Object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZZ)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertBodyText(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZZ)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    iget-wide v3, v0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, v0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    iget v7, v2, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v4 .. v12}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertObject(JLjava/util/ArrayList;FFZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Insert object should be call after setDocument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    move-object v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertObject(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid WPage or Object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;ZZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertObject(JLcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid WPage or Object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            ")",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            "Z)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            "ZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            "ZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1
.end method

.method public insertObject(Ljava/util/ArrayList;Landroid/graphics/PointF;ZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            "ZZZZ)",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    move-object v2, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertObject(JLjava/util/ArrayList;FFZZZZ)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Insert object should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public insertTextObject(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Landroid/graphics/PointF;Z)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    move-object v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_insertTextObject(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;FFZ)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Adjust rect should be call after setDocument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isObjectFitPageWidth(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_isObjectFitPageWidth(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isObjectValid(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->Native_isObjectValid(JLcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setNativeHandle(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->mNativeHandle:J

    return-void
.end method
