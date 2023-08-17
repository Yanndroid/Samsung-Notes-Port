.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mIsShown:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mDismissListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mParentView:Landroid/view/View;

.field private mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

.field private mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartTipPopup"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mIsShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string p2, "SmartTipPopup# target is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    invoke-direct {p1, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setExpanded(Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->smart_tip_popup_guide_background_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setBorderColor(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$color;->smart_tip_popup_guide_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setMessageTextColor(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->getLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTipPopup# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to make instance cause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mDismissListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->isValidParentView()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getUpdateRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static bridge synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mIsShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private isValidParentView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v1, "dismiss SmartTipPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->dismiss(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v1, "dismiss# mSmartTipPopup is null or not Showing."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getLayoutChangeListener()Landroid/view/View$OnLayoutChangeListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mDismissListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;

    :cond_0
    return-void
.end method

.method public show()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mIsShown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v1, "show# SmartTipPopup"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->show(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mSmartTipPopup:Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper;->setOnStateChangeListener(Lcom/samsung/android/support/senl/cm/base/framework/widget/TipPopupWidgetWrapper$OnStateChangeListener;)V

    return v2

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v2, "show# mIsShown is true. skip it."

    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v2, "show# mSmartTipPopup is null or Showing."

    goto :goto_0
.end method

.method public update()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->getUpdateRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->getUpdateRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
