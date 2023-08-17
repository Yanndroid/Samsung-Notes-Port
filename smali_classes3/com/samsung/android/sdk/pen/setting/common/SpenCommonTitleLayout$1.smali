.class Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenCommonTitleLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
