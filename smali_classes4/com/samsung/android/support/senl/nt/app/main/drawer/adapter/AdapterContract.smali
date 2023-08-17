.class public interface abstract Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/AdapterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getFolderUuid()Ljava/lang/String;
.end method

.method public abstract getModel()Lcom/samsung/android/support/senl/nt/app/main/drawer/model/DrawerModel;
.end method

.method public abstract isFreeFormWindow()Z
.end method

.method public abstract onFolderSelected(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;IZ)V
.end method

.method public abstract onItemLongPressed(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/FolderHolderInfo;)V
.end method

.method public abstract setDragListener(Lcom/samsung/android/support/senl/nt/app/main/drawer/adapter/DrawerHolder;)V
.end method

.method public abstract updateNewBadge()V
.end method
