.class Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->addHeader(Landroid/content/Context;Lcom/samsung/android/sdk/pen/setting/SpenPopupMiniLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
