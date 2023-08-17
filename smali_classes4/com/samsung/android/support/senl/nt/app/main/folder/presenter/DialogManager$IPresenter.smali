.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract onBackKeyDown()V
.end method

.method public abstract onColorConfirm(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onDeleteConfirm(Ljava/lang/String;)V
.end method

.method public abstract onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onMoveConfirm(Ljava/lang/String;)V
.end method

.method public abstract onPickConfirm(Ljava/lang/String;)V
.end method
