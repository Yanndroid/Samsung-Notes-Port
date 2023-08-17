.class Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteDataChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$000(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setFavoriteList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$100(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$200(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoritePenMiniLayoutV2;->getSelectedItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataManager;->setSelectedIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$300(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFavoriteDataChanged() size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenMiniFavoriteControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->access$300(Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteDataChangedListener;->onFavoriteDataChanged(Ljava/util/List;)V

    return-void
.end method
