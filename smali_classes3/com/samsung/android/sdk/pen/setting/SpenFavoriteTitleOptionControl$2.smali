.class Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->showOptionMenu()V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$OnButtonClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->hideOptionMenu(Z)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
