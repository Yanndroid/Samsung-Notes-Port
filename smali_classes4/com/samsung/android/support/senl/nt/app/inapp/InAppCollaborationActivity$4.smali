.class Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->updateUIMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

.field public final synthetic val$blockView:Landroid/view/View;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "uiMode/dim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "uiMode/night_mode_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "uiMode/night_mode_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "uiMode/dim_release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->c(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->this$0:Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;->d(Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity;)Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/InAppView;->setDimView()V

    goto :goto_1

    :pswitch_1
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_1

    :pswitch_2
    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/InAppCollaborationActivity$4;->val$blockView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3c89d068 -> :sswitch_3
        -0x1cd9342e -> :sswitch_2
        0x285c171c -> :sswitch_1
        0x547b30d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
