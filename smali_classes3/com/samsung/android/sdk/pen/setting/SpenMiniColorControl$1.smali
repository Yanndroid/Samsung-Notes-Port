.class Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initPopupView(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)[F

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$102(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;I)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;->onColorChanged(I[F)V

    :cond_0
    return-void
.end method
