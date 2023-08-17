.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenSizeLayoutInterface$ActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IF)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSizeLevel(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setValue(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;->onSizeChanged(I)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$302(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;I)I

    return-void
.end method
