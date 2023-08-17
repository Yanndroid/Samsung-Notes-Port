.class Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->addFooter()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    sget-object v1, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;->MORE:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;Landroid/view/View;Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$ButtonType;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;

    const/4 v0, 0x3

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoritePenMiniLayoutControl;I)V

    return-void
.end method
