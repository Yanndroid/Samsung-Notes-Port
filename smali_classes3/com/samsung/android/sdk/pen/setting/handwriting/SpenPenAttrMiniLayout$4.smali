.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->getMode()Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->SIZE:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$600(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    sget-object v0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;->OPACITY:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$700(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$Mode;Z)V

    :cond_0
    return-void
.end method
