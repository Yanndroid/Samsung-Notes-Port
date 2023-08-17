.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract$IScreenOffView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/CompContract$IView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/ScreenOffContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScreenOffView"
.end annotation


# virtual methods
.method public abstract attachCovered(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/covered/CoveredPresenter;)V
.end method

.method public abstract attachGuide(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/guide/GuidePresenter;)V
.end method

.method public abstract attachMenuBar(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;)V
.end method

.method public abstract attachScroll(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/scroll/ScrollPresenter;)V
.end method

.method public abstract requestRelayout()V
.end method
