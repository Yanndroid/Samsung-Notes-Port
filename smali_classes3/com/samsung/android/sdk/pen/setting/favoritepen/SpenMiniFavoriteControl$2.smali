.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2$ItemEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$600(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SpenMiniFavoriteControl"

    const-string v1, "AddButtonClick() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$600(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onItemClick(IILcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->addDeleteFavoritePen(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$402(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;Z)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->hasView()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->deleteFavorite(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$500(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$500(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteViewItemClickListener;->onViewItemClick(Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;)V

    return-void
.end method
