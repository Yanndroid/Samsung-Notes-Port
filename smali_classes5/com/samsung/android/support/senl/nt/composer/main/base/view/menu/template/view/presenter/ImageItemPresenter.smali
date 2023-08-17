.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;
.source "SourceFile"


# static fields
.field private static final KEY_IMAGE_DELETED_ITEM:Ljava/lang/String; = "key_image_deleted_item"

.field private static final KEY_IMAGE_MODE:Ljava/lang/String; = "key_image_mode"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesContract$ItemPresenter;)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ImageItemData;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ImageItemData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    return-void
.end method


# virtual methods
.method public createItem(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;
    .locals 11

    new-instance v10, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ImageItemPresenter;->getTemplateType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTemplateEntity;->getHeight()I

    move-result v9

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZII)V

    return-object v10
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method public getTemplateType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/ItemData;->getItemMode()I

    move-result v0

    const-string v1, "key_image_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mDeletedItemList:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "key_image_deleted_item"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "key_image_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mRestoreItemMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "key_image_deleted_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/CustomItemPresenter;->mDeletedItemList:Ljava/util/List;

    :cond_0
    return-void
.end method
