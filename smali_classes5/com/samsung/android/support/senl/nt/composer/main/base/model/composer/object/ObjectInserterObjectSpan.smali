.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

.field private mIsHwMode:Z

.field private final mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private final mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

.field private final mSpenNoteDeltaZoom:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

.field private final mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

.field private final mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectInserterObjectSpan"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteDeltaZoom:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    return-void
.end method

.method private appendObjectSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-direct {v0, p2, p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;-><init>(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendObjectSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)V

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance p2, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    :cond_0
    return-void
.end method

.method private getPageOffset(I)Landroid/graphics/Point;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageMode()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;->SINGLE:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote$PageMode;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteDeltaZoom:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;->getContentRectInView()Landroid/graphics/RectF;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    return-void
.end method

.method private insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertObjectSpan# mIsHwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mIsHwMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", targetPageIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mIsHwMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->getPageOffset(I)Landroid/graphics/Point;

    move-result-object p2

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    add-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->getLineCountFromBodyTextBottom(Landroid/graphics/PointF;)I

    move-result p2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->insertLineFeed(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->getCursorIndexToInsertIntoBodyText(Landroid/graphics/PointF;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpanToCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteTextManager:Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;->setCursorOnScreen(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    :cond_1
    aget p2, v0, v1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/TextUtil;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpanToCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    return-void
.end method

.method private insertObjectSpanToCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertObjectSpan# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->setRect(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->appendObjectSpan(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    return-void
.end method

.method private setRect(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isFitWidthEnabled(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->getBodyObjectRect(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZ)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZZ)Z

    move-result p1

    return p1
.end method

.method public insertImage(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mIsHwMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 0

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    return-object p1
.end method

.method public insertObjectKeepPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)V
    .locals 0

    invoke-direct {p0, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    return-void
.end method

.method public insertPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V

    return-void
.end method

.method public insertVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->insertObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V

    return-void
.end method

.method public isObjectSpan()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHwMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;->mIsHwMode:Z

    return-void
.end method
