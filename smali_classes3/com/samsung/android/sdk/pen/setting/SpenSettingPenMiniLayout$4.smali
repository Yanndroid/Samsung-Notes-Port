.class Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I[F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;I[F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout$4;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;

    const/16 p2, 0x13

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/SpenSettingPenMiniLayout;IZ)V

    :cond_0
    return-void
.end method
