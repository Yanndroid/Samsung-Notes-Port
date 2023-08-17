.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager$IPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/AdapterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPresenter"
.end annotation


# virtual methods
.method public abstract getLastOpenedSDocXDataChanged()Z
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract isUnlockConverting(Ljava/lang/String;)Z
.end method

.method public abstract onItemLongPressed(Ljava/lang/String;)V
.end method

.method public abstract onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract searchNotesData(Ljava/lang/String;)V
.end method

.method public abstract searchTagNotesData(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCheckedDimNotes()V
.end method

.method public abstract setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract setIsScrolling(Z)V
.end method

.method public abstract setLastOpenedSDocXDataChanged(Z)V
.end method

.method public abstract setPostNotifyDataSetChanged()V
.end method

.method public abstract showSortTypeDialog()V
.end method
