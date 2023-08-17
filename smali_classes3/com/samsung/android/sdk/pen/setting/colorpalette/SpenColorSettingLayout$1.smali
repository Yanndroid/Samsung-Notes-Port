.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout;)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenColorSettingLayout$OnCloseClickListener;->onCloseButtonClick()V

    :cond_0
    return-void
.end method
