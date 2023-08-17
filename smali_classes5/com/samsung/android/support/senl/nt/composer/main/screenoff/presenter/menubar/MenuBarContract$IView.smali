.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract init(IZ)V
.end method

.method public abstract onConfigurationChanged(IZ)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract updateVisibility(II)V
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
        .end annotation
    .end param
.end method
