.class Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$700(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$800(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$400(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$900(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl$3;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenFavoriteTitleOptionControl;)V

    :cond_2
    :goto_0
    return-void
.end method
