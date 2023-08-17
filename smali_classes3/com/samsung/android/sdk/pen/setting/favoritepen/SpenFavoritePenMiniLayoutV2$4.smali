.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$700(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$700(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;)Lcom/samsung/android/sdk/pen/setting/widget/SpenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$4;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->access$800(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;IZ)Z

    :cond_1
    return-void
.end method
