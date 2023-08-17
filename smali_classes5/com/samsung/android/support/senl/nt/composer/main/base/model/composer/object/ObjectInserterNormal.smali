.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

.field private mInsertObjectMargin:I

.field private mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

.field private mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectInserterNormal"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;ILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mInsertObjectMargin:I

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    return-void
.end method


# virtual methods
.method public insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZ)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

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

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isFitWidthEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFitWidth(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    return-void
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isFitWidthEnabled(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v1, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFitWidth(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertObject# insertObject return is null. object : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    if-eqz p3, :cond_1

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    iput v1, p3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, p3, Landroid/graphics/PointF;->y:F

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v1, v3, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFitWidth(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p4

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    iget p4, v3, Landroid/graphics/RectF;->left:F

    iget v0, v2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr p4, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mInsertObjectMargin:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    invoke-direct {p2, p4, v0}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p3, :cond_2

    invoke-virtual {p3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insertObject# page : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", rect : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newPosition : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFocusedTextBox()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    const/4 p3, 0x1

    invoke-interface {p1, v1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->insertBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)V

    :cond_3
    return-object v1
.end method

.method public insertObjectKeepPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->getInsertObjectRect(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    if-eqz p3, :cond_0

    iget v2, p3, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p3, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->adjustRectInPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    invoke-direct {v0, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isFitWidthEnabled(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v2, v3, p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFitWidth(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "insertObjectKeepPage# insertObject return is null. object : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object p4

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p4, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mInsertObjectMargin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_2
    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertObjectKeepPage# page : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", rect : "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newPosition : "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFocusedTextBox()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    const/4 p3, 0x1

    invoke-interface {p2, p1, v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->insertBodyText(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)V

    :cond_3
    return-void
.end method

.method public insertPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    return-void
.end method

.method public insertVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v0, v1, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;->mContract:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;->isFixedMaxPage()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    return-void
.end method

.method public isObjectSpan()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHwMode(Z)V
    .locals 0

    return-void
.end method
