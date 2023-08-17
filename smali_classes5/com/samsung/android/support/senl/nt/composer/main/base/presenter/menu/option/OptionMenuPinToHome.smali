.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OptionMenuPinToHome"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportedPinToHome(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "OptionMenuPinToHome"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/AppWidgetResolverConstructor;->getAppWidgetResolver()Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p1, "isSupportedPinToHome: cannot get the WidgetResolver class"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->isSupportedPinToHome(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportedPinToHome# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public onClickPinToHome(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuLock;)V
    .locals 9

    const-string v0, "OptionMenuPinToHome"

    :try_start_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/AppWidgetResolverConstructor;->getAppWidgetResolver()Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;

    move-result-object v6

    if-nez v6, :cond_0

    const-string p1, "onClickPinToHome: cannot get the WidgetResolver class"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v6, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->isAvailableToReferWidget(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v6, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->showWidgetMaximumToast(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->isAvailableToAddWidget(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v8, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuPinToHome;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuLock;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/common/MenuPresenterContract$IMenuManager;)V

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogPresenterManager;->showUnlockConfirmDialog(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getUuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getLoadPath()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v6, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->pinToHme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v6, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/appwidget/IAppWidgetResolver;->showWidgetAlreadyPinToast(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onClickPinToHome# "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
