.class Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->showrProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->progress_circle:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
