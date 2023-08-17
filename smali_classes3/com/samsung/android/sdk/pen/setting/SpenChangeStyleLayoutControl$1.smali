.class Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenTabGroup$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->initTabView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/view/View;)V
    .locals 2

    const-string v0, "SpenChangeStyleLayoutControl"

    const-string v1, "(1) onTabSelected() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl;)Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v1, Lcom/samsung/android/spen/R$id;->tab_stroke:I

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleLayoutControl$ModeChangedListener;->onModeChanged(I)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/view/View;)V
    .locals 0

    return-void
.end method
