.class Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IF)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenChangeStyleImpl;)Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/changestyle/SpenSettingChangeStyleManager;->changeSizeLevel(I)Z

    return-void
.end method
