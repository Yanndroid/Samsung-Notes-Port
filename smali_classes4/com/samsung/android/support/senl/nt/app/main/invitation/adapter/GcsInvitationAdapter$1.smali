.class Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

.field public final synthetic val$viewHolder:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->val$viewHolder:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->val$viewHolder:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick(). "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GcsInvitationAdapter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->b(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;->a(Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/GcsInvitationAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/invitation/adapter/AdapterContract$IPresenter;->onItemSelected(ILcom/samsung/android/sdk/mobileservice/social/group/result/GroupInvitationListResult$GroupInvitation;)V

    :cond_2
    :goto_0
    return-void
.end method
