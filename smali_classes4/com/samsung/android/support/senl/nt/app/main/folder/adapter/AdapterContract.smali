.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/AdapterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFolderUuid()Ljava/lang/String;
.end method

.method public abstract getLayoutMode()I
.end method

.method public abstract getModeIndex()I
.end method

.method public abstract isAnimateItem(Ljava/lang/String;)Z
.end method

.method public abstract isCheckedItem(Ljava/lang/String;)Z
.end method

.method public abstract isDimItem(Ljava/lang/String;)Z
.end method

.method public abstract onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V
.end method

.method public abstract onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)Z
.end method

.method public abstract onItemPressReleased()V
.end method

.method public abstract onTouch(Lcom/samsung/android/support/senl/nt/app/main/folder/adapter/FolderHolder;I)Z
.end method

.method public abstract setDragListener(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end method

.method public abstract toggleFolderSyncSwitch(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end method

.method public abstract updateContentDescription(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end method
