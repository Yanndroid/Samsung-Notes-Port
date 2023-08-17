.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InsertMenuBottomAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)V

    return-void
.end method


# virtual methods
.method public createItemOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;)V

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isVoiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->voice_notification_channel_name:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->composer_add_voice:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isAudioFileEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_audio:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->composer_add_audio:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isTextFileEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_text_only:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->composer_add_text_box:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_drawing:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->composer_add_drawing:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->isOnDeveloperMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_table:I

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuAddPresenter;->isMathEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_math:I

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$AbsInsertMenuAdapter;->itemArray:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_add_text_box:I

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->composer_add_text_box:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$MenuItem;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$InsertMenuBottomAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_insert_menu_bottom_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuAdd$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
