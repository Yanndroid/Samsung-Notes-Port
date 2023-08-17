.class Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsWidgetConfigureActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/app/notes/widget/common/log/WidgetLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;->this$0:Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;->c(Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity;I)V

    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/widget/configure/AbsWidgetConfigureActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
