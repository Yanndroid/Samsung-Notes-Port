.class Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPopupLayout$OrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->initButton(ZLcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/favoritepen/SpenFavoriteOptionMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
