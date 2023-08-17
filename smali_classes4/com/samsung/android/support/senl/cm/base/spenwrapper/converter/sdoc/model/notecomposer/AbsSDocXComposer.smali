.class abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;


# static fields
.field public static final FONT_SIZE_DEFAULT:I = 0x11

.field public static final FONT_SIZE_MIN:I = 0x8

.field private static final H_MARGIN_DDP:I = 0x10

.field private static final MIN_PAGE_PERCENTAGE:F = 0.75f

.field public static final OLD_COMPOSER_H_MARGIN_DP:I = 0x18

.field private static final TAG:Ljava/lang/String; = "AbsSDocXComposer"

.field private static final V_MARGIN_DDP:I = 0xa


# instance fields
.field public mAddedTaskInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

.field public final mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

.field public mDP:F

.field private final mDocDP:I

.field public final mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field public final mHorizontalMargin:I

.field public mLastTaskObjectType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

.field public mLastTaskStyle:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

.field public final mObjectMaxHeight:I

.field public final mObjectMaxWidth:I

.field public mOldObjectMaxWidth:F

.field public mPageColor:I

.field public final mPageHeight:I

.field public final mPageMinHeight:F

.field public final mPageWidth:I

.field public final mVerticalMargin:I

.field public final mVerticalMargin2:I

.field public final mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mAddedTaskInfo:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;->NONE:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskObjectType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskStyle:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyText:Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->appendPage()Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mFirstPage:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;-><init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultWidth()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageWidth:I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageDefaultHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageHeight:I

    int-to-float v1, p1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageMinHeight:F

    div-int/lit16 v1, p2, 0x168

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mDocDP:I

    mul-int/lit8 v2, v1, 0x10

    iput v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mHorizontalMargin:I

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mVerticalMargin:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mVerticalMargin2:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    iput v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mObjectMaxWidth:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mObjectMaxHeight:I

    const/high16 p1, 0x41800000    # 16.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, p1, v1, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setMargin(FFFF)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    invoke-interface {p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IResourceGetter;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 p3, 0x43200000    # 160.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mDP:F

    int-to-float p2, p2

    const/high16 p3, 0x42400000    # 48.0f

    mul-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mOldObjectMaxWidth:F

    :cond_0
    return-void
.end method


# virtual methods
.method public addTaskInfo(ILcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mAddedTaskInfo:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskObjectType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    iput-object p3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskStyle:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    return-void
.end method

.method public abstract appendBodyText(Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;)V
.end method

.method public abstract appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->attachFile(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Ljava/lang/String;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->attachFile(Ljava/lang/String;)V

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendTaskObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)V

    return-void
.end method

.method public applyScale(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v3, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mBodyTextMeasurer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->release()V

    return-void
.end method

.method public getDPI()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mDocDP:I

    int-to-float v0, v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageHeight:I

    return v0
.end method

.method public getLastTaskObjectType()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskObjectType:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer$ComposingObjectType;

    return-object v0
.end method

.method public getLastTaskStyle()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mLastTaskStyle:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;

    return-object v0
.end method

.method public getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    return-object v0
.end method

.method public getObjectMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mObjectMaxHeight:I

    return v0
.end method

.method public getObjectMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mObjectMaxWidth:I

    return v0
.end method

.method public getOldObjectMaxWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mOldObjectMaxWidth:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageWidth:I

    return v0
.end method

.method public isAddedTask(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mAddedTaskInfo:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public makeTaskText(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 6

    const-string v0, "\n"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectTextBox(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;->setFontSize(F)V

    iget v1, p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mType:I

    const/4 v2, 0x2

    const-string v3, "AbsSDocXComposer"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add task : number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/ObjectTaskStyle;->mTaskNumber:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string p1, "add task : bullet"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    const/16 v1, 0x8

    invoke-direct {p1, v5, v4, v1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    goto :goto_1

    :cond_2
    const-string p1, "add task : done"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-direct {p1, v5, v4, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;->Checkout(Z)V

    goto :goto_1

    :cond_3
    const-string p1, "add task : todo"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;

    invoke-direct {p1, v5, v4, v2}, Lcom/samsung/android/sdk/pen/document/textspan/SpenBulletParagraph;-><init>(III)V

    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->appendTextParagraph(Lcom/samsung/android/sdk/pen/document/textspan/SpenTextParagraphBase;)V

    :cond_4
    return-object v0
.end method

.method public setPageColor(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/AbsSDocXComposer;->mPageColor:I

    return-void
.end method
