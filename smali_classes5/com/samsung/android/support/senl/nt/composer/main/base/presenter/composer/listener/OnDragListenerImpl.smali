.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field private static final CLIP_TYPE_MM_CONTENT:I = 0x1

.field private static final CLIP_TYPE_NONE:I = 0x0

.field private static final CLIP_TYPE_TEXT:I = 0x2

.field private static final CLIP_TYPE_UNSUPPORTED:I = -0x1

.field public static final DRAG_START_FROM_APPS_EDGE:Ljava/lang/String; = "from_apps_edge"

.field private static final DROP_AREA_GAP:I = 0x32

.field private static final SCROLL_AREA_ONE:I = 0x32

.field private static final SCROLL_AREA_TWO:I = 0x19

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackupObjList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupPageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;",
            ">;"
        }
    .end annotation
.end field

.field private mBeginHistory:Z

.field private mClipType:I

.field private final mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

.field private mDragPosition:Landroid/graphics/PointF;

.field private mDropContentType:I

.field private mDropPermissions:Landroidx/core/view/DragAndDropPermissionsCompat;

.field private mHapticDetachSound:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

.field private mIsInternalLabel:Z

.field private mLabelInfo:[Ljava/lang/String;

.field public mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private final mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

.field private final mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

.field private final mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

.field private final mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

.field private mScrollBottomAreaOne:D

.field private mScrollBottomAreaTwo:D

.field private final mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

.field private mScrollRightAreaOne:D

.field private mScrollRightAreaTwo:D

.field private mScrollXAreaOne:D

.field private mScrollXAreaTwo:D

.field private mScrollYAreaOne:D

.field private mScrollYAreaTwo:D

.field private final mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

.field private mStartPosition:Landroid/graphics/PointF;

.field private mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field private mTargetObjectCursor:I

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

.field private final mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

.field private final mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OnDragListenerImpl"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBeginHistory:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getPdfManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getSoftInputManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getQuickSaveTimer()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object p2

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->createHapticDetachSound(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mHapticDetachSound:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mSoftInputManager:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/SoftInputManager;

    return-object p0
.end method

.method private autoScroll(FF)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->getPan()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "autoScroll# bodyText is empty"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollBottomAreaOne:D

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    const/high16 v2, 0x42480000    # 50.0f

    const/high16 v3, 0x41c80000    # 25.0f

    if-gez p2, :cond_4

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollBottomAreaTwo:D

    cmpg-double p2, v6, v4

    if-gez p2, :cond_3

    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v2

    goto :goto_0

    :cond_3
    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v3

    :goto_0
    iput p2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_4
    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaOne:D

    cmpl-double p2, v6, v4

    if-lez p2, :cond_6

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaTwo:D

    cmpl-double p2, v6, v4

    if-lez p2, :cond_5

    iget p2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v2

    goto :goto_0

    :cond_5
    iget p2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v3

    goto :goto_0

    :cond_6
    :goto_1
    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollRightAreaOne:D

    float-to-double p1, p1

    cmpg-double v4, v4, p1

    if-gez v4, :cond_8

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollRightAreaTwo:D

    cmpg-double p1, v4, p1

    if-gez p1, :cond_7

    iget p1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v2

    goto :goto_2

    :cond_7
    iget p1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v3

    :goto_2
    iput p1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :cond_8
    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaOne:D

    cmpl-double v4, v4, p1

    if-lez v4, :cond_a

    iget-wide v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaTwo:D

    cmpl-double p1, v4, p1

    if-lez p1, :cond_9

    iget p1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v2

    goto :goto_2

    :cond_9
    iget p1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    goto :goto_2

    :cond_a
    :goto_3
    iget p1, v1, Landroid/graphics/PointF;->x:F

    iget p2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_b

    iget p1, v1, Landroid/graphics/PointF;->y:F

    iget p2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_c

    :cond_b
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoScroll# setPan : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->setPan(Landroid/graphics/PointF;)V

    :cond_c
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->resultPaste(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method private canDrop(Landroid/content/ClipData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getClipType(Landroid/content/ClipDescription;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    :cond_1
    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "canDrop# ClipType is unsupported."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->showFailureMessage()V

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isIgnoredLabel(Landroid/content/ClipDescription;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "canDrop# isIgnoredLabel."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "canDrop# isEditMode is false."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isEditableState()Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "canDrop# isEditableState is false."

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "canDrop#clip data is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private clearInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mLabelInfo:[Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    return-void
.end method

.method private findObjectPosition(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getObjectList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPositionObject# findObject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private findObjectSpanPosition(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->findObjectSpan(II)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPositionObject# findObjectSpan:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenObjectSpan;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getClipType(Landroid/content/ClipDescription;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "getClipType, description is null"

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->parseLabel(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getInternalCaseClipType()I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getClipType, mimeTypeCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClipType, index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mimeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "text/uri-list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ImageUtil;->isImageMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "application/pdf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, "text/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x2

    return p1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_6
    return v0
.end method

.method private getCursorAfterRemove([I)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCursorAfterRemove before :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    const/4 v2, 0x0

    aget v3, p1, v2

    if-le v1, v3, :cond_1

    const/4 v3, 0x1

    aget v4, p1, v3

    if-gt v1, v4, :cond_0

    aget p1, p1, v2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    goto :goto_0

    :cond_0
    aget v2, p1, v2

    add-int/2addr v2, v1

    aget p1, p1, v3

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCursorAfterRemove after : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getInternalCaseClipType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;->hasSelectedText()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getPositionObject(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isDropContentObjectSpan()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->findObjectSpanPosition(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->findObjectPosition(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "getPositionObject# return Default Object"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    return-object p1
.end method

.method private hasAudioContent(Landroid/content/ClipData;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private internalDnD()Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mLabelInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v2, "internalDnD# mLabelInfo is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-nez v2, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v2, "internalDnD# mTargetObject is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;->getStartX()F

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;->getStartY()F

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;->getSelectionStart()I

    move-result v4

    aput v4, v3, v1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;->getSelectionEnd()I

    move-result v2

    const/4 v4, 0x1

    aput v2, v3, v4

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalDnD# startPosF : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", cursor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getPositionObject(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isInSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;[I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v0, "internalDnD# item is dropped in same position"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->removeInternalContent([ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internalDnD# setFocusedTextBox cursor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setFocusedTextBox(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->setFocus(Z)V

    :cond_4
    :goto_0
    return v4
.end method

.method private isAudioType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isAvailableDrag(II)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isTwoPage()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private isAvailableToAddAudio(Landroid/content/ClipData;)Z
    .locals 6

    const-string v0, "audio/"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAvalibleToAdd(Landroid/content/ClipData;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->drag_and_drop_only_one_audio:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return p1
.end method

.method private isAvailableToAddPdf(Landroid/content/ClipData;)Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isMultiplePdf()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "application/pdf"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAvalibleToAdd(Landroid/content/ClipData;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$plurals;->drag_and_drop_only_one_pdf:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return p1
.end method

.method private isAvalibleToAdd(Landroid/content/ClipData;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/common/ClipboardHelper;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_1
    return v1
.end method

.method private isCursorDragMode()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelection()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isDropContentObjectSpan()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method private isDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isDeleteOnlyMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isComposerViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->takeServerWritePermission()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDropContentObjectSpan()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isObjectSpanOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isIgnoredLabel(Landroid/content/ClipDescription;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "Page_Thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "isIgnoredLabel# clip data is PageDragList."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "from_apps_edge"

    if-lt v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIgnoredLabel# clip data is apps edge. Extras:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIgnoredLabel# clip data is apps edge. Label:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private isInSelection(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;[I)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInSelection# mDropContentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isInSelectionTextType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;[I)Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isInSelectionObjectSpanType([I)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isInSelectionObjectType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result p1

    return p1
.end method

.method private isInSelectionObjectSpanType([I)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInSelectionObjectSpanType# startCursor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "currentCursor:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result v1

    if-eqz v1, :cond_3

    aget v1, v0, v3

    aget v2, p1, v3

    if-lt v1, v2, :cond_0

    aget v1, v0, v3

    aget v2, p1, v4

    if-le v1, v2, :cond_1

    :cond_0
    aget v1, v0, v4

    aget v2, p1, v3

    if-lt v1, v2, :cond_2

    aget v0, v0, v4

    aget p1, p1, v4

    if-gt v0, p1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isSamePositionRegion()Z

    move-result p1

    return p1
.end method

.method private isInSelectionObjectType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isSamePositionRegion()Z

    move-result p1

    return p1
.end method

.method private isInSelectionTextType(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;[I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    instance-of v1, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursor(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;)[I

    move-result-object p1

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    if-ge v1, v3, :cond_4

    aget v1, p1, v0

    aget v3, p2, v0

    if-lt v1, v3, :cond_2

    aget v1, p1, v0

    aget v3, p2, v2

    if-lt v1, v3, :cond_3

    :cond_2
    aget v1, p1, v2

    aget v3, p2, v0

    if-lt v1, v3, :cond_4

    aget p1, p1, v2

    aget p2, p2, v2

    if-ge p1, p2, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    return v0
.end method

.method private isMultiplePdf()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getCoeditAdapter()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->isCoeditNote()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isSamePositionRegion()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mStartPosition:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x42480000    # 50.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mStartPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->PAGE_RATIO:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio$PageRatioType;->getHeight(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isTextSelected(I[I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    aget p1, p2, v1

    aget p2, p2, v0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private isTwoPage()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->getPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isTwoPage()Z

    move-result v0

    return v0
.end method

.method private isVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getCvPageSettingController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/CvPageSettingController;->getPageLayoutState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/page/PageLayoutState;->isVertical()Z

    move-result v0

    return v0
.end method

.method private onDragEnded()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->smoothScrollToFitPage()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->OnDragAndDrop:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->unLock(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->clearInfo()V

    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isIgnoredLabel(Landroid/content/ClipDescription;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onDragLocation# isIgnoredLabel."

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isEditableState()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "onDragLocation# isEditableState is false."

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mStartPosition:Landroid/graphics/PointF;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mStartPosition:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->setEditMode()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getPositionObject(Landroid/graphics/PointF;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->getMode()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_3

    :goto_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->autoScroll(FF)V

    return v3

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectTypeUtil;->isTextType(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPageIndexByXY(FF)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAvailableDrag(II)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->getCursorIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectShape;Landroid/graphics/PointF;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObjectCursor:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setCursorPosition(I)V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDragLocation# drag position is wrong. currentPageIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageIndexDragPosition:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTwoPage:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isTwoPage()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isVertical:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isVertical()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->setFocus(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setCursorBlink(Z)V

    goto/16 :goto_1
.end method

.method private onDragStarted(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mQuickSaveTimerController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->OnDragAndDrop:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;->lock(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getClipType(Landroid/content/ClipDescription;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string p2, "dragStarted#clip data is not supported."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isIgnoredLabel(Landroid/content/ClipDescription;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->setEnable(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mHapticDetachSound:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->play()Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p2

    const/16 v0, 0x6c

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->performHapticFeedback(Landroid/view/View;I)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectPageList()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/SelectedObjectManager;->getSelectedObjectPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaOne:D

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double v0, p2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaTwo:D

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-double v0, p2

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaOne:D

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollBottomAreaOne:D

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p2

    int-to-double v0, p2

    iget-wide v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollYAreaTwo:D

    sub-double/2addr v0, v6

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollBottomAreaTwo:D

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-double v0, p2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaOne:D

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-double v0, p2

    mul-double/2addr v0, v4

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaTwo:D

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    int-to-double v0, p2

    iget-wide v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaOne:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollRightAreaOne:D

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-double p1, p1

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollXAreaTwo:D

    sub-double/2addr p1, v0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollRightAreaTwo:D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mStartPosition:Landroid/graphics/PointF;

    return-void
.end method

.method private onDrop(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const-string v3, "onDrop# drop position is wrong : "

    if-ltz v1, :cond_1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isValidPosition(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxWidth:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageLayoutWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "maxHeight:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageLayoutHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->canDrop(Landroid/content/ClipData;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    return v2

    :cond_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDrop# clipType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mClipType:I

    if-ne v3, v0, :cond_6

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-nez v4, :cond_6

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAvailableToAddAudio(Landroid/content/ClipData;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isAvailableToAddPdf(Landroid/content/ClipData;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->requestDNDPermissions(Landroid/view/DragEvent;)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->pasteClip(Landroid/content/ClipData;Z)Z

    move-result v2

    goto :goto_3

    :cond_5
    :goto_2
    return v2

    :cond_6
    const/4 p2, 0x2

    if-eq v3, p2, :cond_7

    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-eqz p2, :cond_9

    :cond_7
    iget-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->internalDnD()Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->pasteClip(Landroid/content/ClipData;Z)Z

    move-result v2

    :cond_9
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDrop, result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->showFailureMessage()V

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelection()V

    :goto_4
    return v0
.end method

.method private parseLabel(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->parseClipLabel(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mLabelInfo:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLabel# label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsInternalLabel: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private pasteClip(Landroid/content/ClipData;Z)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    sget-object v14, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pasteClip# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDropPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    if-eqz v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->clearWritingToolControl()V

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v1, v13}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->setEnable(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result v1

    const/16 v16, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->isFocusedTextBox()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v1

    move v10, v1

    move-object/from16 v11, v16

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getPageIndexByXY(FF)I

    move-result v2

    if-gez v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pasteClip# getPageIndexByXY is wrong : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result v2

    :cond_2
    move-object v11, v1

    move v10, v2

    :goto_0
    new-instance v12, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    iget-object v7, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iget-object v8, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTextManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    iget-object v9, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPdfManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;

    const/16 v17, 0x1

    iget-object v1, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getDialogPresenterManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IDialogPresenter;

    move-result-object v18

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V

    move-object v1, v12

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object v15, v12

    move/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v20, v14

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$InputValues;-><init>(Landroid/content/Context;Landroid/content/ClipData;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/PdfManager;ILandroid/graphics/PointF;ZLcom/samsung/android/support/senl/nt/composer/main/base/util/WebCardUtil$IDialogManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ISoftInputController;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste;-><init>()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl$2;

    invoke-direct {v2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;)V

    const/4 v3, 0x1

    if-nez p2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->hasAudioContent(Landroid/content/ClipData;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    :cond_4
    move/from16 v5, p2

    move-object/from16 v4, v16

    :goto_2
    if-eqz v5, :cond_5

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v15, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    const-string v6, "to get WRITE_EXTERNAL_STORAGE permission"

    move-object/from16 v7, v20

    invoke-static {v7, v6}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v6}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    const-string v7, "Composer"

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_6

    return v5

    :cond_6
    const/16 v7, 0x7b

    invoke-static {v6, v7, v4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v4, v1, v15, v2, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    :goto_3
    return v3

    :cond_7
    :goto_4
    move v5, v13

    move-object v7, v14

    const-string v1, "pasteClip# clipData is null or itemCount is 0"

    invoke-static {v7, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private releaseDNDPermissions()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropPermissions:Landroidx/core/view/DragAndDropPermissionsCompat;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "releaseDNDPermissions# Permissions released."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropPermissions:Landroidx/core/view/DragAndDropPermissionsCompat;

    invoke-virtual {v0}, Landroidx/core/view/DragAndDropPermissionsCompat;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropPermissions:Landroidx/core/view/DragAndDropPermissionsCompat;

    :cond_0
    return-void
.end method

.method private removeInternalContent([ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "removeInternalContent"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTargetObject:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isTextSelected(I[I)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    if-ne p2, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->getCursorAfterRemove([I)V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->isGroupingHistory()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_3

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBeginHistory:Z

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->beginHistoryGroup()Z

    :cond_3
    const/4 p2, 0x0

    move v2, p2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isTextSelected(I[I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    aget v5, p1, p2

    aget v6, p1, v0

    aget v7, p1, p2

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->removeObjectFromBackupPageList(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropContentType:I

    if-ne v4, v1, :cond_4

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v3

    aget v4, p1, p2

    aget v5, p1, v0

    aget v6, p1, p2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->removeText(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeInternalContent# removeContents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method

.method private removeObjectFromBackupPageList(ILcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return-void
.end method

.method private requestDNDPermissions(Landroid/view/DragEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroidx/core/view/DragAndDropPermissionsCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDropPermissions:Landroidx/core/view/DragAndDropPermissionsCompat;

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v0, "requestDNDPermissions# Drop permission request failed."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resultPaste(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->showErrorToast()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->isUpdateInvertBG()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mNoteManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBeginHistory:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mWNote:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBeginHistory:Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->releaseDNDPermissions()V

    return-void
.end method

.method private setDragPosition(Landroid/view/DragEvent;)V
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->getShadowViewWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->getShadowViewHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->getDelta()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mScrollController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->getScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->x:F

    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p1

    div-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isCursorDragMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    :cond_0
    return-void
.end method

.method private setEditMode()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mIsInternalLabel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->ReadOnly:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->View:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;->Writing:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#DragAndDrop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->setMode(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/Mode;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showFailureMessage()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->drag_and_drop_not_supported:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method private smoothScrollToFitPage()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isVertical()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    const-string v1, "smoothScrollToFitPage# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->smoothScrollToFitPage()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDragAndDropInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    return-object v0
.end method

.method public isEditableState()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerImplContract$IPresenter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getMdeInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfo;->hasWritePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->setDragPosition(Landroid/view/DragEvent;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " =  event("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")  drop("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragPosition:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")  ShadowView("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->getShadowViewWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mDragAndDropInfo:Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/info/DragAndDropInfo;->getShadowViewHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->onDragEnded()V

    return v2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->onDrop(Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->onDragLocation(Landroid/view/DragEvent;)Z

    move-result p1

    return p1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->onDragStarted(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupObjList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mBackupPageList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mHapticDetachSound:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/media/AbsAudioManagerCompatImplFactory$ISoundManagerImpl;->release()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/OnDragListenerImpl;->mHapticDetachSound:Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat$SoundManager;

    :cond_2
    return-void
.end method
