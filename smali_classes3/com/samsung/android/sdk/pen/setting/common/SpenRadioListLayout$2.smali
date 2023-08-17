.class Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "SpenRadioListLayout"

    const-string v1, "mRippleLayoutClickListener onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout$2;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenRadioListLayout;I)V

    return-void
.end method
