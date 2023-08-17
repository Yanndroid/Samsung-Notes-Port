.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mPinController:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ControllerManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->mPinController:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    return-void
.end method


# virtual methods
.method public getPinController()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->mPinController:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    return-object v0
.end method

.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "init#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->mPinController:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/save/SaveModel;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->mPinController:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/PinController;->onAttachView(Landroid/app/Activity;)V

    return-void
.end method

.method public onAttachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "onAttachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachView()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/controller/ControllerManager;->TAG:Ljava/lang/String;

    const-string v1, "onDetachView#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
