.class public Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;
.super Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;
.source "SourceFile"


# instance fields
.field public mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/listener/SpenComposerActionListener;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;->mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    return-void
.end method


# virtual methods
.method public onInitLayoutFinished()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVActionListenerImpl;->mScrollZoomController:Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/simple/presenter/SCVScrollZoomController;->restoreLastPosition()V

    return-void
.end method
