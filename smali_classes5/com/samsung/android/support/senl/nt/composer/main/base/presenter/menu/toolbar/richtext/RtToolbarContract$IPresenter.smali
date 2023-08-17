.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarContract$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract getBackgroundColor()I
.end method

.method public abstract getLastRtState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarContract$IView;
.end method

.method public abstract isComposerViewDarkTheme()Z
.end method

.method public abstract isDirectWriteRecognizing()Z
.end method

.method public abstract isDirectWriteUsing()Z
.end method

.method public abstract update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end method
