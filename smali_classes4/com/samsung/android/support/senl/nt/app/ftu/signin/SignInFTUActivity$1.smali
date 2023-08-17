.class Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->c(Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SignInFTUActivity"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;->c(Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/account/AccountHelper;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity$1;->this$0:Lcom/samsung/android/support/senl/nt/app/ftu/signin/SignInFTUActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
