.class public Lcom/samsung/android/app/notes/nativecomposer/NativeComposerReminderTriggerActivity;
.super Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;
.source "SourceFile"


# static fields
.field public static final ARG_POS_RECT_POPUP:Ljava/lang/String; = "app_pos_rect_popup"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public startComposerActivityByOption(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "app_pos_rect_popup"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/nativecomposer/ActivityUtil;->getOptionsForPopupWindow(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
