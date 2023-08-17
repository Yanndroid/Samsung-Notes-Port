.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TemplateItemViewHolder"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;)V

    return-void
.end method

.method public static bridge synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onBindAddedItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_added_menu:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$color;->change_template_added_item_bg_color:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getDrawablePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getDrawablePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getDrawablePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->loadTemplateImage(Ljava/lang/Object;Landroid/content/res/Resources;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->comp_template_pdf_load_failed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->loadTemplateImage(Ljava/lang/Object;Landroid/content/res/Resources;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindAddedItem# DrawablePath is wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getDrawablePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->initDetailViewOnBind(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mTemplateImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDetailView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;->onBindAddedItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    return-void
.end method
