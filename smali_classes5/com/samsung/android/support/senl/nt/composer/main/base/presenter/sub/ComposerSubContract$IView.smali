.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/sub/ComposerSubContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract attachCompList(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/CompListPresenter;)V
.end method

.method public abstract attachComposerView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Z)V
.end method

.method public abstract attachDirectWriteMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/directwrite/DwToolbarPresenter;)V
.end method

.method public abstract attachGuideTextView()V
.end method

.method public abstract attachHwToolbarMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/HwToolbarPresenter;Z)V
.end method

.method public abstract attachRichTextMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarPresenter;Z)V
.end method

.method public abstract attachSearchModeView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/search/SearchModePresenter;)V
.end method

.method public abstract attachTitle(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/title/TitleEditorPresenter;)V
.end method

.method public abstract attachToolbar(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/ToolbarPresenter;)V
.end method

.method public abstract attachVoiceMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;)V
.end method

.method public abstract releaseComposerView(Lcom/samsung/android/support/senl/nt/composer/main/base/common/Callback;)V
.end method

.method public abstract removeCaptureComposerView()V
.end method

.method public abstract showComposerCover()V
.end method
