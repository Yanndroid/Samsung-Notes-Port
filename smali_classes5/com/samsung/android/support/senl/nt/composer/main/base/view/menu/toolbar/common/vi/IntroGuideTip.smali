.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;


# instance fields
.field private mGuideTipPopupRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "IntroGuideTip"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getGuideTipPopup()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->release()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->showGuideTip(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private static canShow(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    const-string v1, "canShow# targetView is null"

    invoke-static {p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "Composer"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "guide_smart_tip_shown"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canShow isKeyboardShown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p0, v3

    return p0

    :cond_2
    :goto_0
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canShow fail needToShow : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " targetShown : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " targetWindowFocus : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static bridge synthetic d(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->canShow(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static disableShowCondition()V
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "guide_smart_tip_shown"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static dismiss()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getGuideTipPopup()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->dismiss()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic e()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    move-result-object v0

    return-object v0
.end method

.method private getGuideTipPopup()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mGuideTipPopupRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getRunCount()I
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "floating_guide_count_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidCount()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getRunCount()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->updateRunCount()V

    const/4 v0, 0x0

    return v0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mGuideTipPopupRef:Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mInstance:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->canShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->showDelayedAfterLaidOut(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static showDelayedAfterLaidOut(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    const-string v1, "showDelayedAfterLaidOut +"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showGuideTip(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    const-string v1, "showGuideTip"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;-><init>(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->setOnDismissListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->show()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->disableShowCondition()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->mGuideTipPopupRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->release()V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGuideTip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->disableShowCondition()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->release()V

    return-void
.end method

.method public static showOnValidCount(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->isValidCount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->canShow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->showDelayedAfterLaidOut(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static update()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getGuideTipPopup()Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/util/SmartTipPopup;->update()V

    :cond_1
    return-void
.end method

.method private static updateRunCount()V
    .locals 3

    const-string v0, "Composer"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/vi/IntroGuideTip;->getRunCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "floating_guide_count_id"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    return-void
.end method
