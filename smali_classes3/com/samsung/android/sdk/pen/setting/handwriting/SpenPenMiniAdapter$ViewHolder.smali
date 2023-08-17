.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;->penView:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniView;

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder$1;-><init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$ViewHolder;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
