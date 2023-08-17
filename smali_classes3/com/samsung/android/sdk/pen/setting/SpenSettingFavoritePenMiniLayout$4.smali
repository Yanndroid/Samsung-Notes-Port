.class Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    const-string v1, "SpenSettingFavoritePenMiniLayout"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "onButtonClick() - BUTTON_TYPE_EDIT_CANCEL"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0, v2, v2, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;IZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "onButtonClick() - BUTTON_TYPE_EDIT_DONE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)V

    goto :goto_0

    :cond_3
    const-string v0, "onButtonClick() - BUTTON_TYPE_DELETE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;IZZ)V

    :goto_0
    move v0, v2

    goto :goto_4

    :cond_4
    const-string v3, "onButtonClick() - BUTTON_TYPE_MORE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getFavoriteCount()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    move-result-object v3

    if-eqz v1, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v5}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenMiniFavoriteControl;->getMaxCount()I

    move-result v5

    if-ge v1, v5, :cond_6

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->showPopupMenu(ZZ)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->getMoreButton()Landroid/view/View;

    move-result-object v2

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    const-string v2, "onButtonClick() - BUTTON_TYPE_CLOSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$1000(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;)Landroid/view/View$OnClickListener;

    move-result-object v1

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingFavoritePenMiniLayout;I)V

    :cond_a
    :goto_5
    return-void
.end method
