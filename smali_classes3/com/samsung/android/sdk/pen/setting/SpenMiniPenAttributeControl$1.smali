.class Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)I

    move-result v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilOpacity;->setCurrentAlpha(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$202(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;->onAlphaChanged(I)V

    :cond_1
    return-void
.end method

.method public onFixedWidthChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;->onFixedWidthChanged(Z)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniView;->setSizeLevel(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl;)Lcom/samsung/android/sdk/pen/setting/SpenMiniPenAttributeControl$OnDataChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/pen/setting/handwriting/SpenPenAttrMiniLayout$OnDataChangedListener;->onSizeChanged(I)V

    :cond_1
    return-void
.end method
