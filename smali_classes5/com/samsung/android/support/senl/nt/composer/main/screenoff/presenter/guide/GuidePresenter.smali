.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private mGuideModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;

.field private mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "GuidePresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    return-object p0
.end method

.method private addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mGuideModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;->getLayoutVisibility()I

    move-result v0

    :goto_0
    return v0
.end method

.method private makePreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    return-object v0
.end method

.method private removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getListenerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/ListenerManager;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mComposerViewPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mGuideModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getInstance()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/StartCommandFactory;->getStartCommand()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/IStartCommand;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/command/start/PenButtonHoverTap;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mGuideModel:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/guide/GuideModel;->saveData(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->makePreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    return-void
.end method

.method public initView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "initView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportAOP()Z

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;->init(IZ)V

    return-void
.end method

.method public onAttachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onAttachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(IZ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/ConfigurationModel;->isSupportNavigationRotation()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->getVisibility()I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;->onConfigurationChanged(IZ)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mPreTouchListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;->onDestroy()V

    return-void
.end method

.method public onDetachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    return-void
.end method

.method public onFocused()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onFocused#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->makePreTouchListener()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method

.method public onReadyToShow()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->TAG:Ljava/lang/String;

    const-string v1, "onReadyToShow#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->getVisibility()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;->updateVisibility(I)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;->mView:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuideContract$IView;

    return-void
.end method
