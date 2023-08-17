.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->setExpandButton(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

.field public final synthetic val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->isExpanded()Z

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;->mItemActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;->onCollapseItems()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/widget/MenuButton;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/widget/MenuButton;->rotateMatrix(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_list_collapsed:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->val$item:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/item/Item;->setExpand(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/TemplateCommonViewHolder;->mItemActionListener:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/listener/OnItemActionListener;->onExpandItems()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/widget/MenuButton;

    invoke-virtual {p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/widget/MenuButton;->rotateMatrix(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setRotation(F)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->getInstance()Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->mExpandButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->change_template_list_expanded:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/accessibility/VoiceAssistantTTS;->sendTalkBackMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;

    invoke-static {p1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/adapter/holder/EssentialMenuViewHolder;Z)V

    return-void
.end method
