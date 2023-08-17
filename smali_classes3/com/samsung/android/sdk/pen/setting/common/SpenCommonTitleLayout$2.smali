.class Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->checkTitleTextLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v0, "SpenCommonTitleLayout"

    const-string v1, "Remove Title\'s OnGlobalLayoutListener."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$202(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)V

    :cond_0
    return-void
.end method
