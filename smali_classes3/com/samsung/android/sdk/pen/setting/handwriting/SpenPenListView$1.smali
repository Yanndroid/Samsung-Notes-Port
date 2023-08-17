.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenListView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPenList$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
