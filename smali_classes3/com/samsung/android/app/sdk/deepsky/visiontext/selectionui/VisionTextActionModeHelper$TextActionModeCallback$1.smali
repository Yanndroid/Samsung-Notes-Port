.class Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;->this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;->this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    iget-object v0, v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->access$400(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;->this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    iget-object v1, v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    iget-object v1, v1, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->mDrawHelper:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;->this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    iget-object v0, v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->access$202(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback$1;->this$1:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;

    iget-object v0, v0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper$TextActionModeCallback;->this$0:Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;->access$302(Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextActionModeHelper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
