.class Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$600(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;)Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl$7;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenPenMiniLayoutControl;I)V

    return-void
.end method
