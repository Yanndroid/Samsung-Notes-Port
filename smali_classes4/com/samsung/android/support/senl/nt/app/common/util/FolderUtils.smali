.class public Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedFolderDefaultColor(ILandroid/content/res/Resources;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->sub_folder_icon_default_bg_color:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$color;->folder_list_item_icon_default_bg_color:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method

.method public static getFolderHomeDrawable(Z)I
    .locals 0

    if-eqz p0, :cond_0

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->isRTLMode()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_lef_rtl:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_folder_home_close:I

    :goto_0
    return p0
.end method

.method public static hasChildFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->hasChild()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    if-ne v3, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/FolderUtils;->isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static isIgnoreFolder(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$ScreenOffMemo;->UUID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesCategoryTreeEntry;->getDocumentCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
