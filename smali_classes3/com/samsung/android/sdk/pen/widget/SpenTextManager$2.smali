.class Lcom/samsung/android/sdk/pen/widget/SpenTextManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/widget/SpenTextManager;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$2;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/widget/SpenTextManager$2;->this$0:Lcom/samsung/android/sdk/pen/widget/SpenTextManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/widget/SpenTextManager;->setCursorAnchorPosition()V

    return-void
.end method
