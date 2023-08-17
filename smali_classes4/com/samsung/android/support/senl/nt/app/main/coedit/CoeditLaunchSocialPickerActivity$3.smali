.class Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditPickerInfo$ActivityFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->launchSocialPicker()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->i(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "7702"

    goto :goto_0

    :cond_0
    const-string p1, "7701"

    :goto_0
    const-string v0, "102"

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;->f(Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "301"

    goto :goto_2

    :cond_2
    const-string v0, "401"

    :goto_2
    if-eqz p1, :cond_3

    const-string p1, "7502"

    goto :goto_1

    :cond_3
    const-string p1, "7501"

    goto :goto_1

    :goto_3
    return-void
.end method
