.class Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenWidthLayoutInterface$OnDataChangedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPenWidthChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$5;->this$0:Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;->onFixedWidthChanged(Z)V

    :cond_0
    return-void
.end method
