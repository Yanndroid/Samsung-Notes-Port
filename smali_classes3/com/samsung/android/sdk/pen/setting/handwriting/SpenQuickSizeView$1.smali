.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenQuickSizeView$OnDataChangedListener;->onSizeChanged(I)V

    :cond_0
    return-void
.end method
