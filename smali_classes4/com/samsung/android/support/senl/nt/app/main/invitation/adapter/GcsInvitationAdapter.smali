.class public Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GcsInvitationAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInvitationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;->decorate(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->gcs_invitation_list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method

.method public removeInvitationItemByPosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setInvitationList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->mInvitationList:Ljava/util/List;

    return-void
.end method
