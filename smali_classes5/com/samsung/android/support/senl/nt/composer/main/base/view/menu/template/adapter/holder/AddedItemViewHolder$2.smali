.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;->onBindAddedItem(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;

.field public final synthetic val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;->mItemActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;->onDeleteTemplate(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/AddedItemViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialItemViewHolder;->mDeleteButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method
