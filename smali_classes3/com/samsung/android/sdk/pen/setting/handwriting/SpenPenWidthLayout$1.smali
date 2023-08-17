.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/samsung/android/spen/R$id;->fixed_width_view:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->setPenWidth(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;->onPenWidthChanged(Z)V

    :cond_1
    return-void
.end method
