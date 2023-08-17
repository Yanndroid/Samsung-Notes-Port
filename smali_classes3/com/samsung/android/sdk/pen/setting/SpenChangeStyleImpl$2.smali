.class Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->initView(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/common/SpenSelectView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeBlankShape(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$2;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    const/4 v0, 0x6

    invoke-static {p1, v0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;IZZ)V

    :cond_0
    return-void
.end method
