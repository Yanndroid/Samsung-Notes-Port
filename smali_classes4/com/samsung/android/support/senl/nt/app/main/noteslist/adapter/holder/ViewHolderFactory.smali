.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ViewHolderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewHolderFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHolder(Landroid/view/ViewGroup;Landroid/view/View;II)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/ContentUtils;->getViewMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x0

    sparse-switch p2, :sswitch_data_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/DummyHolder;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/DummyHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_invitation_holder:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditInvitationHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/RelatedHashTagListHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_related_hash_tag_list_holder:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/RelatedHashTagListHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_2
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SsmProgressBarHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_ssm_progress_holder:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SsmProgressBarHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->tipcard_viewpager:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/TipCardHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_4
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_coedit_space_holder:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/CoeditSpaceHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_5
    const-string p2, "ViewHolderFactory"

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_sort_bar_holder:I

    invoke-virtual {p1, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p0, "onCreateViewHolder - inflate sortbar"

    goto :goto_0

    :cond_0
    const-string p0, "onCreateViewHolder - already inflated sortbar"

    :goto_0
    invoke-static {p2, p0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SortBarHolder;-><init>(Landroid/view/View;I)V

    return-object p0

    :sswitch_6
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_subheader_holder:I

    invoke-virtual {p2, p3, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubHeaderHolder;-><init>(Landroid/view/View;I)V

    return-object p1

    :sswitch_7
    invoke-static {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ViewHolderFactory;->onCreateNoteHolder(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;

    move-result-object p0

    return-object p0

    :cond_1
    :sswitch_8
    invoke-static {p0, v0, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ViewHolderFactory;->onCreateSubFolderHolder(Landroid/view/ViewGroup;II)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_8
        0x8 -> :sswitch_8
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static onCreateNoteHolder(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolder;
    .locals 3

    const-string v0, "ViewHolderFactory"

    if-nez p1, :cond_0

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_simple_item_no_thumbnail:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_simple_item:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_grid_item:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$layout;->notes_list_item:I

    :goto_0
    invoke-virtual {p1, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_1
    const-string p0, "onCreateNoteHolder - inflate"

    goto :goto_2

    :cond_0
    const-string p0, "onCreateNoteHolder - already inflated"

    :goto_2
    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_1

    const/4 p0, 0x0

    goto :goto_3

    :pswitch_4
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewNoThumbnailHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewNoThumbnailHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_5
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridMediumViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridMediumViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_6
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridSmallViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridSmallViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_7
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SimpleViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_8
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/GridViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3

    :pswitch_9
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ListViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/ListViewHolder;-><init>(Landroid/view/View;)V

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static onCreateSubFolderHolder(Landroid/view/ViewGroup;II)Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->sub_folder_list_span_8:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->sub_folder_list_span_7:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->sub_folder_list_span_5:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->sub_folder_list_span_4:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/adapter/holder/SubFolderHolder;-><init>(Landroid/view/View;II)V

    return-object v0
.end method
