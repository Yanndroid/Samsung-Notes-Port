.class public interface abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarContract$IView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/HistoryEventListenerImpl$UndoRedoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/richtext/RtToolbarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IView"
.end annotation


# virtual methods
.method public abstract executeTextStyle()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract hide()V
.end method

.method public abstract hideAll()V
.end method

.method public abstract isDirectWriteRecognizing()Z
.end method

.method public abstract isDirectWriteUsing()Z
.end method

.method public abstract onDetach()V
.end method

.method public abstract onObjectChanged()V
.end method

.method public abstract onPaletteListChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRedoable(Z)V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onUndoable(Z)V
.end method

.method public abstract onUpdateTask(I)V
.end method

.method public abstract restore(Landroid/os/Bundle;)V
.end method

.method public abstract show()V
.end method

.method public abstract update(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/text/SpanStates;)V
.end method

.method public abstract updateFontBgColor(I)V
.end method
