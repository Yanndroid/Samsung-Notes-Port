.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_IS_BODY:Ljava/lang/String; = "CopiedText"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClickedObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mConstraintManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;

.field public mHwMode:Z

.field private mInsertObjectMargin:I

.field private mIsCoedit:Z

.field public mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field private mObjectInserter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

.field private final mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

.field private final mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

.field private mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

.field public mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

.field private mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

.field private mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

.field public mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

.field private mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

.field private mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ObjectManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->createObjectLayoutOption()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    return-void
.end method

.method private adjustNewPaintingRectForTablet(ZLandroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    const p1, 0x3f666666    # 0.9f

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p1

    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    add-float/2addr v1, v2

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method private clearCropRect(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;)V
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getOriginalRect()Lcom/samsung/android/sdk/pen/base/SpenRectD;

    move-result-object v0

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    iput-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->bottom:D

    iput-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->right:D

    iput-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->top:D

    iput-wide v3, v0, Lcom/samsung/android/sdk/pen/base/SpenRectD;->left:D

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->setOriginalRect(Lcom/samsung/android/sdk/pen/base/SpenRectD;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->setCropRect(Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private createObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isObjectSpanOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getSpenNoteTextManager()Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterObjectSpan;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;Lcom/samsung/android/sdk/composer/text/SpenNoteTextManager;Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;

    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object v10, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    iget v11, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mInsertObjectMargin:I

    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$2;

    invoke-direct {v12, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;)V

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;ILcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectInserterNormal$Contract;)V

    return-object v0
.end method

.method private getAdjustedPaintingRectF(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearCropRect(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p4, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->adjustNewPaintingRectForTablet(ZLandroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->adjustRectInPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private getPainting(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p1, Landroid/util/Pair;

    new-instance p2, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-direct {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;-><init>()V

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string v0, "addPainting insert new object painting"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mClickedObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result p1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_1

    new-instance v0, Landroid/util/Pair;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mClickedObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-object p2, p1

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "addPainting get selected object painting"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "addPainting fail. does not selected object painting"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private insertVoice(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isAddingValidated(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "insertVoice# VoiceManager.isValid is false."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "insertVoice# done"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private isFileExists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private removeBrokenPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string v1, "addPainting#removeBrokenPainting"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectSpanHelper;->findObjectSpan(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeObjectSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private updateObjectSpanVoiceName(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTextOnlyMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setCanUseTextOnlyMode(ZI)V

    return-void
.end method


# virtual methods
.method public addContents(ILjava/util/List;Landroid/graphics/PointF;Z)Landroid/util/Pair;
    .locals 11
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;",
            ">;",
            "Landroid/graphics/PointF;",
            "Z)",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContents# to ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " paste position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", keepPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedBodyText()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isFocusedTextBox()Z

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p3, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)Z

    goto :goto_1

    :cond_3
    move p4, v3

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getConvertContract(Landroid/text/SpannableStringBuilder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v6, v2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;

    sget-object v8, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addContents# content type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->convertToSpenObject(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$Base;->getType()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    const-string v6, "addContents# VoiceManager.isValid is false."

    invoke-static {v8, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v3

    goto :goto_2

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertTextContents(Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    move p4, v3

    :cond_6
    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object p4

    invoke-interface {p4, p1, v9, p3, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertObjectKeepPage(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)V

    move p4, v3

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v7

    invoke-interface {v7, p1, v9, p3, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object p1, v7

    :cond_8
    :goto_3
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertTextContents(Landroid/text/SpannableStringBuilder;)V

    :cond_a
    const/4 p1, 0x0

    if-eqz v1, :cond_b

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    new-instance p1, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c
    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p3, "addContents# end"

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public addImage(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addImage# to ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImage# The path is not exists. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    const/4 p2, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    move p2, v2

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertImage(Ljava/util/ArrayList;I)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public addMath(IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMath# to ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v1, v2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFixedMaxPage()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public addObjects(ILjava/util/List;Landroid/graphics/PointF;)V
    .locals 16
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addObjects# to ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", position : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", HwMode:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedBodyText()Z

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    move v9, v8

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    sget-object v12, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addObjects# "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string v13, "CopiedText"

    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->hasExtraDataByteArray(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    check-cast v11, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v3, :cond_1

    iget-object v13, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isFocusedTextBox()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v0, v11, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectFromObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Z)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isEmptyFocusTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    const/4 v3, 0x1

    const/4 v9, 0x1

    :cond_1
    invoke-direct {v0, v11}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateObjectSpanVoiceName(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const-string v14, ", length:"

    if-eqz v3, :cond_3

    if-eqz v10, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v0, v11, v1, v2, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addObjects# textbox position: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 p2, v3

    move v7, v8

    move v10, v7

    goto :goto_1

    :cond_3
    iget-object v15, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v15}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p2, v3

    const-string v3, "addObjects# textbox cursor:"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v15, v8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v8, v15, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v3

    const/4 v7, 0x0

    aget v8, v15, v7

    invoke-virtual {v3, v8, v11, v7, v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    :goto_1
    move/from16 v3, p2

    goto :goto_2

    :cond_4
    move v7, v8

    invoke-virtual {v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v8

    const/16 v12, 0xa

    if-ne v8, v12, :cond_5

    instance-of v8, v11, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v8, :cond_5

    move-object v8, v11

    check-cast v8, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    iget-object v12, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setTitle(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v8, v7

    goto/16 :goto_0

    :cond_6
    if-eqz v9, :cond_7

    iget-boolean v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_7
    iget-boolean v3, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertObjectList(Landroid/graphics/PointF;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;Z)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string v2, "addObjects# end"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addPainting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "addPainting fail. invalid path info."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, p5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFileExists(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    move v0, v3

    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPainting(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p4, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    if-eqz v0, :cond_5

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->removeBrokenPainting(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p4, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->setThumbnailPath(Ljava/lang/String;)V

    invoke-direct {p0, p4, p2, p1, p6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getAdjustedPaintingRectF(Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p4, p1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-virtual {p4, p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;->attachFile(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPainting attached file : "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_6

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_7
    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-static {p5}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void

    :cond_8
    :goto_3
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addPainting fail. isValidOutThumbPath "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTextBox(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTextBox# to ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v1, v2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFixedMaxPage()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public addTextBox(Landroid/graphics/PointF;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTextBox# position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {v2, v3, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFixedMaxPage()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_1
    return-void
.end method

.method public addTextBoxFromCTT(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Landroid/graphics/PointF;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->insertTextObject(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;Landroid/graphics/PointF;Z)Z

    return-void
.end method

.method public backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public clearSelectObject()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject(Z)V

    return-void
.end method

.method public clearSelectObject(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->clearSelectObject(Z)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->clearSelection()V

    return-void
.end method

.method public commitHistory()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V

    return-void
.end method

.method public createObjectLayoutOption()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;-><init>()V

    return-object v0
.end method

.method public deleteAllObject()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeAllObject()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    instance-of v0, p2, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->stopVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)Z

    :cond_0
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->commitHistory()V

    :cond_1
    return-void
.end method

.method public deleteObjectList(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteObjectList# page:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", objList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    instance-of v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->stopVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObjectList(Ljava/util/ArrayList;)V

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->commitHistory()V

    :cond_2
    return-void
.end method

.method public deleteSelectedObject()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectPageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    instance-of v5, v4, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->stopVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)Z

    :cond_1
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->commitHistory()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getInternalTempDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickedObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mClickedObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-object v0
.end method

.method public getConstraintManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mConstraintManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mConstraintManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mConstraintManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ConstraintManager;

    return-object v0
.end method

.method public getConvertContract(Landroid/text/SpannableStringBuilder;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/Content$ConvertContract;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Landroid/text/SpannableStringBuilder;)V

    return-object v0
.end method

.method public getLayoutOption()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->getLayoutType()I

    move-result v0

    return v0
.end method

.method public getNewBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getFontSizeDelta()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextFontSize;-><init>(I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/BodyTextAlign;->getStoredValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getDefaultFontColor()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;-><init>(III)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newBodyText(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    return-object v0
.end method

.method public getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getFontSizeDelta()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxFontSize;-><init>(I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/FontSize;->getValue()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/span/TextBoxAlign;->getStoredValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getDefaultFontColor()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;-><init>(III)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextFactory;->newTextBox(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTextBoxData;)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    return-object v0
.end method

.method public getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getNoteZoomScroller()Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    return-object v0
.end method

.method public getObjectFromObjectSpan(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Z)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectShape;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getObjectSpan()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    instance-of v2, v1, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isObjectSpanOptionEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectInserter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->isObjectSpan()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->createObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectInserter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->setHwMode(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectInserter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    return-object v0
.end method

.method public getPageIndexByXY(FF)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->getPageIndexByXY(FF)I

    move-result p1

    return p1
.end method

.method public getPastePosition()Landroid/graphics/PointF;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->getPastePosition()Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedObjectBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->getSelectedData()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->createBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedObjectList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    return-object v0
.end method

.method public getSelectedObjectPageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectPageList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSafeObjectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedSafeObjectList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    return-object v0
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;IZ)V

    return-void
.end method

.method public init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    iput p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mInsertObjectMargin:I

    new-instance p1, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1, p2, p4, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->init(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectInserter:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    iput-boolean p6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mIsCoedit:Z

    return-void
.end method

.method public insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Landroid/graphics/PointF;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mVoiceModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/voice/VoiceModel;->isRecordingVoiceState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTimeStampSpan;-><init>(IIJ)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextSpan(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;)V

    :cond_0
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPageIndexByXY(FF)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p2

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertBodyText# position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pageOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pageIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr p3, v0

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;FZ)Z

    move-result p1

    return p1
.end method

.method public insertImage(ILjava/lang/String;ZZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertImage# targetIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/PointF;Z)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    :cond_0
    return-void
.end method

.method public insertImage(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->insertImage(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public insertObjectList(Landroid/graphics/PointF;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;Z)V
    .locals 2
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->updateTextOnlyMode()V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {p1, v1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setWithMargin(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-direct {p2, v1, p3, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;-><init>(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;Ljava/util/ArrayList;Landroid/graphics/PointF;)V

    invoke-virtual {p2, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setWithMargin(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFixedMaxPage()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setFixedMaxPage(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->setCommitHistory(Z)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/InsertObjectBuilder;->build()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Ljava/util/ArrayList;)V

    return-void
.end method

.method public insertObjectVoice(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertObjectVoice# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;-><init>()V

    invoke-static {v0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->setTitle(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Ljava/lang/String;)V

    const/4 p3, 0x4

    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setState(I)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->attachFile(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertVoice(ILcom/samsung/android/sdk/pen/document/SpenObjectVoice;)Z

    move-result p1

    return p1
.end method

.method public insertTextContents(Landroid/text/SpannableStringBuilder;)V
    .locals 10

    const-string v0, ", new text length : "

    const-string v1, " / "

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedBodyText()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getNewTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-static {p1, v2}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->convertSpannablerToSpen(Landroid/text/SpannableStringBuilder;Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorFromFocusedTextBox()[I

    move-result-object v5

    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addContents# textbox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", byte size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addContents# get the byte size : textbox "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v6

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "e : "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object p1

    aget v0, v5, v4

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->insertText(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;II)V

    return-void
.end method

.method public insertVoiceData()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getVoiceDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVoiceData# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->setCreationTime(J)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getNewVoiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/AudioUtil;->setName(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->insertVoiceData(ILcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)V

    invoke-static {v2}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->startRecording(Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertVoiceData# end. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string v1, "insertVoiceData error"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isEmptyFocusTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->clearObjectSpan()Z

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmptyFocusTextBox# textBox.getText() is empty after clearObjectSpan. orgLength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFixedMaxPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusedTextBox()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isFocusedTextBox()Z

    move-result v0

    return v0
.end method

.method public isHwMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    return v0
.end method

.method public isObjectFitPageWidth(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;->isObjectFitPageWidth(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1
.end method

.method public isObjectSpanOptionEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isObjectSpanOptionEnabled()Z

    move-result v0

    return v0
.end method

.method public isSelectedBodyText()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedBodyText()Z

    move-result v0

    return v0
.end method

.method public isSelectedObjectOfObjectSpan()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedObjectOfObjectSpan()Z

    move-result v0

    return v0
.end method

.method public isSelectedTextBox()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedTextBox()Z

    move-result v0

    return v0
.end method

.method public isSelectedTextBox(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->isSelectedTextBox(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public isValidDoc()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidPosition(Landroid/graphics/PointF;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPageIndexByXY(FF)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->playVideo(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenWNoteHelper:Lcom/samsung/android/sdk/composer/document/SpenWNoteHelper;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    return-void
.end method

.method public selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public selectObjectList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->selectObjectList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setClickedObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mClickedObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    return-void
.end method

.method public setControlObject(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->setControlObject(Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;)V

    return-void
.end method

.method public setFitWidth(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setFitWidth(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->setFitWidth(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    return-void
.end method

.method public setHwMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mHwMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getObjectInserter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/IObjectInserter;->setHwMode(Z)V

    return-void
.end method

.method public setImageEditable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setImageEditable(Z)V

    return-void
.end method

.method public setInserter(Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteObjectInserter:Lcom/samsung/android/sdk/composer/input/SpenNoteObjectInserter;

    return-void
.end method

.method public setLassoCrop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenControlObjectManager:Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/control/SpenControlObjectManager;->setLassoCrop(Z)V

    return-void
.end method

.method public setLayoutOption(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->getLayoutType()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->setObjectDefaultFlowLayoutType(I)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->setLayoutType(I)V

    return-void
.end method

.method public setNoteZoomScroller(Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSpenNoteZoomScroller:Lcom/samsung/android/sdk/composer/zoomScroller/SpenNoteZoomScroller;

    return-void
.end method

.method public setObjectSpanEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->isObjectSpanOptionEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mObjectLayoutOption:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectLayoutOption;->setObjectSpanOption(Z)V

    return-void
.end method

.method public setTextOnlyModeState(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mTextOnlyModeState:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    return-void
.end method

.method public stopVoice(Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;Z)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "stopVoice call stopRecording"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->getObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->TAG:Ljava/lang/String;

    const-string p2, "stopVoice call stopPlaying"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopPlaying()V

    return v2

    :cond_2
    return v1
.end method

.method public updateSelectedObject(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->mSelectedObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->updateSelectedObject(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
