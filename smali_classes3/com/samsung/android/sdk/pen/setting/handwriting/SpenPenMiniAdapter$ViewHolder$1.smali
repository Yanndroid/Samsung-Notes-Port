.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

.field public final synthetic val$this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;->val$this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;->this$1:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;

    iget-object v1, v1, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
