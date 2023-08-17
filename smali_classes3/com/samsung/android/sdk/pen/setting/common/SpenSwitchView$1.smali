.class Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSwitchView;->toggle()V

    return-void
.end method
