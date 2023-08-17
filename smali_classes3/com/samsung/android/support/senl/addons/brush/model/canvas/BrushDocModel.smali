.class public Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;
.super Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0008\u0010\u0014\u001a\u00020\u000cH\u0016J\u0012\u0010\u0015\u001a\u00020\u000e2\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000cH\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;",
        "screenModel",
        "Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;",
        "path",
        "",
        "(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Ljava/lang/String;)V",
        "mCanvasHeight",
        "",
        "mCanvasWidth",
        "mFilePath",
        "mIsTobeDiscardDoc",
        "",
        "close",
        "",
        "getDocumentFilePath",
        "getHeight",
        "getSelectedArea",
        "Landroid/graphics/RectF;",
        "getWidth",
        "isDiscardDoc",
        "measurePaintingDoc",
        "setDiscardDoc",
        "isDiscard",
        "Companion",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCanvasHeight:I

.field private mCanvasWidth:I

.field private mFilePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsTobeDiscardDoc:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel$Companion;

    const-string v0, "BrushDocModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "screenModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->measurePaintingDoc(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private final measurePaintingDoc(Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenData;->getContentScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/brush/model/canvas/IBrushCanvasScreenModel;->getStatusBarHeight()I

    move-result p1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canvasSizeWH = ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canvasSizeWH = ( "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " )"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v3, v6, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0, v4, v4, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasHeight:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasWidth:I

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-le v0, p1, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasWidth:I

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasHeight:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasWidth:I

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "final canvasSizeWH = ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasWidth:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mIsTobeDiscardDoc:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->discard()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->close()V

    :goto_0
    return-void
.end method

.method public getDocumentFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasHeight:I

    :cond_0
    return v0
.end method

.method public getSelectedArea()Landroid/graphics/RectF;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/model/canvas/document/AbsPaintingDocModel;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mCanvasWidth:I

    :cond_0
    return v0
.end method

.method public isDiscardDoc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mIsTobeDiscardDoc:Z

    return v0
.end method

.method public setDiscardDoc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/model/canvas/BrushDocModel;->mIsTobeDiscardDoc:Z

    return-void
.end method
