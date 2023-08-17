.class public Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;
.super Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;,
        Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;
    }
.end annotation


# static fields
.field public static final ERASE_ALL_TYPE_CUSTOM_DEFINE:I = 0x1

.field public static final ERASE_ALL_TYPE_TOTAL_PAGE:I = 0x0

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final PREVIEW_ALPHA:F = 0.23f

.field private static final PREVIEW_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SpenSettingRemoverLayout"


# instance fields
.field private isShowPreviewForAWhile:Z

.field private mClearAllButton:Landroid/view/View;

.field private mClearAllDivider:Landroid/view/View;

.field private mClearAllListener:Landroid/view/View$OnClickListener;

.field private mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

.field private mDelayRunnable:Ljava/lang/Runnable;

.field private mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

.field private mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

.field private mEraseAllOption:I

.field private mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportHighlighterOnly:Z

.field private mIsSupportPopupMenu:Z

.field private mOldPreviewSize:F

.field private mPopupMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenuSelectedIndex:I

.field private mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

.field private mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

.field private mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

.field private mSelfClose:Z

.field private mStartTracking:Z

.field private mStopTracking:Z

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private final mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

.field private mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->construct(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->construct(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$7;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$10;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->construct(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->showPreviewForaAWhile()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    return p0
.end method

.method public static synthetic access$1102(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    return p0
.end method

.method public static synthetic access$1202(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    return p1
.end method

.method public static synthetic access$1300(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hidePreview()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mOldPreviewSize:F

    return p0
.end method

.method public static synthetic access$1700(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->notifyEraseAll()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hideEraserAllOption(Z)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuSelectedIndex:I

    return p1
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportPopupMenu:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllOption:I

    return p1
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->showEraseAllOption()V

    return-void
.end method

.method public static synthetic access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;Z)Landroid/transition/TransitionSet;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->getTransition(Z)Landroid/transition/TransitionSet;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->notifyDataChanged()V

    return-void
.end method

.method public static synthetic access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->updatePreview(F)V

    return-void
.end method

.method public static synthetic access$900(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    return-object p0
.end method

.method private construct(Landroid/content/Context;ZZ)V
    .locals 2

    const-string v0, "SpenSettingRemoverLayout"

    const-string v1, "construct"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportHighlighterOnly:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mSelfClose:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuList:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->initView(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setListener()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->initPreviewAnimation()V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setVisibility(I)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mViewListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V

    return-void
.end method

.method private getTransition(Z)Landroid/transition/TransitionSet;
    .locals 7

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3ea8f5c3    # 0.33f

    const-wide/16 v5, 0x14d

    if-eqz p1, :cond_0

    new-instance p1, Landroid/transition/ChangeBounds;

    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, v5, v6}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object p1

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/transition/ChangeBounds;

    invoke-direct {p1}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {p1, v5, v6}, Landroid/transition/ChangeBounds;->setDuration(J)Landroid/transition/Transition;

    move-result-object p1

    new-instance v5, Landroid/view/animation/PathInterpolator;

    invoke-direct {v5, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v5}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    move-result-object p1

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v1, v2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    return-object v0
.end method

.method private hideEraserAllOption(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->hide(Z)V

    :cond_0
    return-void
.end method

.method private hidePreview()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStopTracking:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mStartTracking:Z

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getTitleView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllDivider:Landroid/view/View;

    aput-object v3, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setViewState(ZF[Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setChildViewState(ZF)V

    :cond_0
    return-void
.end method

.method private initClearAll()Z
    .locals 7

    sget v0, Lcom/samsung/android/spen/R$id;->remover_body_erase_all:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    sget v0, Lcom/samsung/android/spen/R$id;->space_view:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$id;->remover_body_erase_all_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_eraser_all_handwriting:I

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setButtonDescription(Landroid/view/View;I)V

    sget v1, Lcom/samsung/android/spen/R$id;->remover_body_erase_all_text:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/widget/TextView;

    aput-object v1, v5, v2

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->setDefaultButtonTextStyle(Landroid/content/Context;[Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v5, 0x41800000    # 16.0f

    new-array v6, v4, [Landroid/widget/TextView;

    aput-object v1, v6, v2

    invoke-static {v3, v5, v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilText;->applyUpToLargeLevel(Landroid/content/Context;F[Landroid/widget/TextView;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenShowButtonShapeText;->setButtonShapeEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllDivider:Landroid/view/View;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportHighlighterOnly:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return v4

    :cond_2
    :goto_1
    return v2
.end method

.method private initEraseAllMenu()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getChildWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getChildHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addViewInTop(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$9;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->setOnMenuItemClickListener(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getChildWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getChildHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private initPreviewAnimation()V
    .locals 3

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilAnimation;->getInterpolator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$5;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$6;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 6

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_eraser_settings:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(I)Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_close_any:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_close_eraser_settings:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonDescription(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/samsung/android/spen/R$layout;->setting_remover_layout_v53:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget v3, Lcom/samsung/android/spen/R$id;->setting_remover_body_layout:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportHighlighterOnly:Z

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setSupportHighlighterOnly(Z)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v3, p2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setSupportRemoverType(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setContentView(Landroid/view/View;)V

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    sget p1, Lcom/samsung/android/spen/R$dimen;->remover_preview_top_padding:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, v5, p1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    invoke-virtual {p1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget p2, Lcom/samsung/android/spen/R$dimen;->remover_preview_width:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget v1, Lcom/samsung/android/spen/R$dimen;->remover_preview_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p1, p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget p2, Lcom/samsung/android/spen/R$dimen;->remover_preview_top_start_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->addViewInTop(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private notifyDataChanged()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDataChanged() changedListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

    if-eqz v1, :cond_0

    const-string v1, "NOT NULL"

    goto :goto_0

    :cond_0
    const-string v1, "NULL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingRemoverLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataChanged() to listener type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;->onRemoverInfoChanged(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    :cond_1
    return-void
.end method

.method private notifyEraseAll()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    const-string v1, "SpenSettingRemoverLayout"

    if-eqz v0, :cond_0

    const-string v0, "==== onClearAll()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;->onClearAll()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== onClearAll("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllOption:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllOption:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuSelectedIndex:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;->onEraseAll(II)V

    :cond_1
    return-void
.end method

.method private setButtonDescription(Landroid/view/View;I)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/samsung/android/spen/R$string;->pen_string_button:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setActionListener(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setEventListener(Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout$OnEventListener;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$4;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setCloseButtonInfo(Landroid/view/View$OnClickListener;)Z

    return-void
.end method

.method private varargs setViewState(ZF[Landroid/view/View;)V
    .locals 3

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showEraseAllOption()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->initEraseAllMenu()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;->initMenuText(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->show(Z)V

    return-void
.end method

.method private showPreview()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->setRemoverSize(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mOldPreviewSize:F

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->getTitleView()Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllDivider:Landroid/view/View;

    aput-object v3, v0, v2

    const v2, 0x3e6b851f    # 0.23f

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->setViewState(ZF[Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setChildViewState(ZF)V

    :cond_1
    return-void
.end method

.method private showPreviewForaAWhile()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->isShowPreviewForAWhile:Z

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const-wide/16 v1, 0x1f4

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->showPreview()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePreview(F)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mOldPreviewSize:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mOldPreviewSize:F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    const-string v0, "SpenSettingRemoverLayout"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverPreview:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverPreview;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllMenu:Lcom/samsung/android/sdk/pen/setting/remover/SpenEraseAllMenu;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mDelayRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllButton:Landroid/view/View;

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mClearAllDivider:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuList:Ljava/util/List;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->close()V

    return-void
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getInfo()Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-object v0
.end method

.method public getRemoverInfoList()[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->getRemoverInfoList()[Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;

    move-result-object v0

    return-object v0
.end method

.method public hideByCloseAll()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mSelfClose:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hideEraserAllOption(Z)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->notifyEraseAll()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$8;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideAnimation(Landroid/view/animation/Animation$AnimationListener;)Z

    return-void
.end method

.method public bridge synthetic hideCloseButton()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->hideCloseButton()V

    return-void
.end method

.method public bridge synthetic requestCloseButtonAccessibilityFocus()Z
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->requestCloseButtonAccessibilityFocus()Z

    move-result v0

    return v0
.end method

.method public setEraseAllListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;)V
    .locals 1

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_handwriting_eraser_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setTitleText(I)Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mEraseAllListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportPopupMenu:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->initClearAll()Z

    :cond_0
    return-void
.end method

.method public setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInfo() type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingRemoverLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportHighlighterOnly:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;->target:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setInfo(Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setAnimation(Z)V

    return-void
.end method

.method public setLoggingListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mGSIMLoggingListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$LoggingListener;

    :cond_0
    return-void
.end method

.method public varargs setPageMenu(Z[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPageMenu() isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenSettingRemoverLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mIsSupportPopupMenu:Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuList:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    array-length p1, p2

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mPopupMenuList:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPageMenu() inputMenuCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRemoverInfoChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverInfoChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$RemoverInfoChangedListener;

    return-void
.end method

.method public setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mRemoverLayout:Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/remover/SpenRemoverLayout;->setRemoverInfoList([Lcom/samsung/android/sdk/pen/SpenSettingRemoverInfo;)V

    return-void
.end method

.method public setRemoverListener(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mCutterListener:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->initClearAll()Z

    :cond_0
    return-void
.end method

.method public setSelfClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mSelfClose:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hidePreview()V

    :cond_1
    return-void
.end method

.method public setVisibilityChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;)V
    .locals 2

    const-string v0, "SpenSettingRemoverLayout"

    const-string/jumbo v1, "setVisibilityChangedListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->mVisibilityChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$ViewListener;

    return-void
.end method
