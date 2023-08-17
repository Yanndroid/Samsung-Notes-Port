.class public Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_MOVED_CHECKED_ITEM:Ljava/lang/String; = "key_moved_folder_checked_item"

.field private static final KEY_MOVED_CHECKLIST:Ljava/lang/String; = "key_moved_folder_check_list"

.field private static final KEY_MOVED_SELECTED_ITEM:Ljava/lang/String; = "key_moved_folder_selected_item"


# instance fields
.field private mCheckedItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mDimStatusItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/support/senl/nt/app/main/folder/model/MoveItem;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addDimStatusItem(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearDimStatusItems()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public isDimStatusItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadCheckedItem(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "key_moved_folder_check_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    const-string v0, "key_moved_folder_checked_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mCheckedItem:Ljava/util/HashMap;

    const-string v0, "key_moved_folder_selected_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mSelectedItem:Ljava/util/HashMap;

    return-void
.end method

.method public onStart()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mCheckedItem:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mSelectedItem:Ljava/util/HashMap;

    return-void
.end method

.method public saveCheckedItem(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mDimStatusItems:Ljava/util/HashMap;

    const-string v1, "key_moved_folder_check_list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mCheckedItem:Ljava/util/HashMap;

    const-string v1, "key_moved_folder_checked_item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/model/FolderMoveMap;->mSelectedItem:Ljava/util/HashMap;

    const-string v1, "key_moved_folder_selected_item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
