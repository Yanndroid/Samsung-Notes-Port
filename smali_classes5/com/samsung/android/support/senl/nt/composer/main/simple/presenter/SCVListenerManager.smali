.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSCVActionListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;

.field private final mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    return-void
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mSCVActionListener:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;->setActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVListenerManager;->mView:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SimpleComposerViewContract$IView;->setActionListener(Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;)V

    return-void
.end method
