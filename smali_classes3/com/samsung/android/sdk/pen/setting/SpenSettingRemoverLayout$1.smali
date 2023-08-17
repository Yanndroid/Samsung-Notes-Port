.class Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$000(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/spen/R$id;->remover_body_erase_all:I

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hideByCloseAll()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$100(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$202(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$402(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$500(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->access$402(Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;I)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$1;->this$0:Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout;->hideByCloseAll()V

    :cond_3
    :goto_0
    return-void
.end method
