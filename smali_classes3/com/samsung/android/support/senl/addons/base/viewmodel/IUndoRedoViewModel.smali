.class public interface abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/IUndoRedoViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0008H&J\u0008\u0010\u000b\u001a\u00020\u0003H&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IUndoRedoViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "getRedoEnabled",
        "",
        "getRedoSelected",
        "getUndoEnabled",
        "getUndoSelected",
        "onRedoClicked",
        "",
        "onRedoLongClicked",
        "onUndoClicked",
        "onUndoLongClicked",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getRedoEnabled()Z
.end method

.method public abstract getRedoSelected()Z
.end method

.method public abstract getUndoEnabled()Z
.end method

.method public abstract getUndoSelected()Z
.end method

.method public abstract onRedoClicked()V
.end method

.method public abstract onRedoLongClicked()Z
.end method

.method public abstract onUndoClicked()V
.end method

.method public abstract onUndoLongClicked()Z
.end method
