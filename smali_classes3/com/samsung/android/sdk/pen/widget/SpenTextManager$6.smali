.class Lcom/samsung/android/sdk/pen/widget/SpenTextManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/text/SpenInputManager$SetSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/widget/SpenTextManager;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$6;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetSelection(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    const-string p1, "SpenTextManager"

    const-string p2, "onSetSelection skip!"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$6;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$200(Lcom/samsung/android/sdk/pen/widget/SpenTextManager;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->access$500(JII)V

    return-void
.end method
