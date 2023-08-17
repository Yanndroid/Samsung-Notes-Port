.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TitleCoeditMemberListHolder"
.end annotation


# instance fields
.field public mMemberInitial:Landroid/widget/TextView;

.field public mMemberLeader:Landroid/widget/ImageView;

.field public mMemberNameView:Landroid/widget/TextView;

.field public mMemberPhoto:Landroid/widget/ImageView;

.field public mMemberWriter:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_member_item_photo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->mMemberPhoto:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_member_item_initial:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->mMemberInitial:Landroid/widget/TextView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_member_item_writer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->mMemberWriter:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_member_item_leader:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->mMemberLeader:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->comp_title_coedit_member_item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;->mMemberNameView:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListAdapterContract;->isStandAlone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter$TitleCoeditMemberListHolder;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/title/coedit/TitleCoeditMemberListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
