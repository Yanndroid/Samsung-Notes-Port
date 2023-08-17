.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniAdapter$OnItemDragStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const-string v0, "SpenFavoritePenMiniLayoutV2"

    const-string v1, "onItemDragStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteItemDragHelper;->setToolType(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    return-void
.end method
