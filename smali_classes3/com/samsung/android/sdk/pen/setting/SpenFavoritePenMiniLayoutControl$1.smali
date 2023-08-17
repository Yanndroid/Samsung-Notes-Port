.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->showPopupMenu(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/spen/R$id;->menu_favorite_add:I

    const/4 v2, 0x1

    const-string v3, "SpenFavoritePenMiniLayoutControl"

    if-ne v0, v1, :cond_0

    const-string p1, "MenuItemClick ADD_FAVORITE"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    const/4 v0, 0x2

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;I)V

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/spen/R$id;->menu_favorite_remove:I

    if-ne p1, v0, :cond_1

    const-string p1, "MenuItemClick EDIT_FAVORITE"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
