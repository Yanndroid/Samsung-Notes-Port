.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$ZoomScrollPresenter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

.field private mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ScrollZoomController"

    const-string v1, "SCV"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    return-void
.end method

.method private checkIsNaNAndChange(Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p1, Landroid/graphics/PointF;->y:F

    :cond_1
    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    return-void
.end method

.method public onScroll(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->isReadyRestore()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->setPosition(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;F)V

    return-void
.end method

.method public restoreLastPosition()V
    .locals 7

    const-string v0, "/"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->isReadyRestore()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->setReadyRestore(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->getPagePanInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;->convertToSpenPagePan(Lcom/samsung/android/support/senl/nt/composer/main/base/page/PagePanInfo;)Lcom/samsung/android/sdk/composer/util/SpenPagePan;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mNoteInfoManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/NoteInfoManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v3

    iget v4, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    if-gt v3, v4, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreLastPosition IndexOutOfBoundsException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "<="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->pageIndex:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/composer/util/SpenPagePan;->convertPagePanToContentPan(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/sdk/composer/util/SpenPagePan;)Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    const-string v1, "restoreLastPosition# contentPan is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->checkIsNaNAndChange(Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mComposerStateManager:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerStateManager;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/ComposerState;->getZoomRatio()F

    move-result v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->setContentPan(FFFI)V

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreLastPosition first setContentPan : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreLastPosition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentPan(FFFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;->setContentPan(FFFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setContentPan# "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    return-void
.end method
