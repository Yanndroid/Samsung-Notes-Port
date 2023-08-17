.class Lcom/samsung/android/sdk/pen/view/context/SpenContext$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/view/context/SpenContext;-><init>(Landroid/content/Context;JLcom/samsung/android/sdk/pen/view/SpenDisplay;Lcom/samsung/android/sdk/pen/view/SpenConfiguration;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/view/context/SpenContext;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/view/context/SpenContext;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext$1;->this$0:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/view/context/SpenContext$1;->this$0:Lcom/samsung/android/sdk/pen/view/context/SpenContext;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/view/context/SpenContext;->access$000(Lcom/samsung/android/sdk/pen/view/context/SpenContext;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
