.class Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->getItemID(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenOptionMenu;I)V

    return-void
.end method
