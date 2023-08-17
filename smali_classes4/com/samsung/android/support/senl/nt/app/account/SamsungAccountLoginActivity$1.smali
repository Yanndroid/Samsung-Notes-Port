.class Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/account/SamsungAccountLoginActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
