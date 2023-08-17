.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->initView(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthMiniLayout;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;->onPenWidthChanged(Z)V

    :cond_0
    return-void
.end method
