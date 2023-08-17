.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->setPenList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->getPenName(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniAdapter;->getSelectedPosition()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenMiniLayout;Ljava/lang/String;Z)V

    return-void
.end method
