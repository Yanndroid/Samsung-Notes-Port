.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/common/adapter/AdapterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInflatedView(I)Landroid/view/View;
.end method

.method public abstract getModeIndex()I
.end method

.method public abstract getSelectedTags()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRunningAnimator()Z
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract isUnlockConverting(Ljava/lang/String;)Z
.end method

.method public abstract loadOrderingProcessorEnabled()Z
.end method

.method public abstract onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract onCoeditInvitationSelected(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onContextClick(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)Z
.end method

.method public abstract onHashTagSelected(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemLongPressed(Ljava/lang/String;)Z
.end method

.method public abstract onNoteSelected(Ljava/lang/String;I)V
.end method

.method public abstract onSpaceLongPressed(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onSpaceSelected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSubFolderSelected(Ljava/lang/String;)V
.end method

.method public abstract onSubHeaderSelected(JZ)V
.end method

.method public abstract onTipCardBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract onViewAttachedToWindow(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
.end method

.method public abstract showSortTypeDialog()V
.end method

.method public abstract skippedDecorateThumbnail(Ljava/lang/String;)V
.end method
